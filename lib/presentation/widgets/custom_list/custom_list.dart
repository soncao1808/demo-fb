// ignore_for_file: always_specify_types

import 'package:flutter/cupertino.dart';
import 'package:fbapp/presentation/widgets/empty_data_widget.dart';
import 'package:fbapp/presentation/widgets/load_more.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomList extends StatefulWidget {
  const CustomList({
    required this.page,
    required this.totalPage,
    required this.data,
    required this.item,
    this.onRefresh,
    this.onLoadMore,
    this.isTwoColumn = false,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 16.0,
    ),
    super.key,
  });

  final int page;
  final int totalPage;
  final Function item;
  final Function? onRefresh;
  final Function? onLoadMore;
  final List data;
  final bool isTwoColumn;
  final EdgeInsetsGeometry padding;

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    Widget renderList() {
      if (widget.data.isEmpty) {
        return const EmptyDataWidget();
      }

      if (!widget.isTwoColumn) {
        return ListView.builder(
          padding: widget.padding,
          itemCount: widget.data.length,
          itemBuilder: (BuildContext context, int index) {
            return widget.item(index);
          },
        );
      }

      return ListView.builder(
        itemCount: (widget.data.length / 2).ceil(),
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          final int firstIndex = index * 2;
          final int secondIndex = index * 2 + 1;

          if (secondIndex >= widget.data.length) {
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: widget.item(firstIndex)),
                    const SizedBox(width: 8),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            );
          }

          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: widget.item(firstIndex)),
                  const SizedBox(width: 8),
                  Expanded(child: widget.item(secondIndex)),
                ],
              ),
              const SizedBox(height: 8),
            ],
          );
        },
      );
    }

    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: CustomHeader(
        builder: (BuildContext c, RefreshStatus? m) => const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: CupertinoActivityIndicator(radius: 14.0),
        ),
      ),
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
              widget.page < widget.totalPage &&
              widget.data.isNotEmpty) {
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
      child: renderList(),
    );
  }
}
