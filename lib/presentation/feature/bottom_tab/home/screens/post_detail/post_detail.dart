/* N-02 post detail */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/components/comment.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/components/content.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/components/header.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/post_detail_presenter.dart';
import 'bloc/post_detail_state.dart';

class PostDetailPage extends BasePage {
  const PostDetailPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends BasePageState<PostDetailPage> {
  final PostDetailPresenter _eventsPresenter =
      injector.get<PostDetailPresenter>();

  @override
  void initState() {
    super.initState();
    _eventsPresenter.init(widget.id);
  }

  @override
  void dispose() {
    _eventsPresenter.resetState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<PostDetailPresenter, PostDetailState>(
        bloc: _eventsPresenter,
        listenWhen: (PostDetailState previous, PostDetailState current) =>
            previous.status != current.status,
        listener: (BuildContext context, PostDetailState state) {},
        builder: (BuildContext context, PostDetailState state) {
          if (state.status == PostDetailPageStatus.postDetailLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: Column(
              children: [
                HeaderPostDetail(
                  onTapAction: () {},
                  user: _eventsPresenter.state.postDetail?.user,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ContentPostDetail(
                          item: _eventsPresenter.state.postDetail,
                        ),
                        const CommentPostDetail(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
}
