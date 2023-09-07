import 'package:flutter/cupertino.dart';
import 'package:fbapp/presentation/widgets/load_more.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomScrollPage extends StatefulWidget {
  const CustomScrollPage({
    required this.page,
    required this.totalPage,
    this.onRefresh,
    this.onLoadMore,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 16.0,
    ),
    this.children = const [],
    super.key,
  });

  final int page;
  final int totalPage;
  final Function? onRefresh;
  final Function? onLoadMore;
  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  State<CustomScrollPage> createState() => _CustomScrollPageState();
}

class _CustomScrollPageState extends State<CustomScrollPage> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {

    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      controller: _refreshController,
      onRefresh: () async {
        if (widget.onRefresh != null) {
          await widget.onRefresh!();
        }
        _refreshController.refreshCompleted();
      },
      onLoading: () async {
        if (widget.onLoadMore != null) {
          await widget.onLoadMore!();
        }
        _refreshController.loadComplete();
      },
      footer: CustomFooter(
        loadStyle: LoadStyle.ShowAlways,
        builder: (BuildContext context, LoadStatus? mode) {
          if (mode == LoadStatus.loading &&
              widget.page < widget.totalPage) {
            return const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: LoadingMore(),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
      child: SingleChildScrollView(
        child: Column(
          children: widget.children,
        ),
      ),
    );
  }
}
