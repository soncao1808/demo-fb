/* N-02 post detail */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/components/comment.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/components/content.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/components/header.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/input_sticker/input_sticker.dart';
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
  final PostDetailPresenter _postDetailPresenter =
      injector.get<PostDetailPresenter>();

  @override
  void initState() {
    super.initState();
    _postDetailPresenter.init(widget.id);
  }

  @override
  void dispose() {
    _postDetailPresenter.resetState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<PostDetailPresenter, PostDetailState>(
        bloc: _postDetailPresenter,
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
                  user: _postDetailPresenter.state.postDetail?.user,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ContentPostDetail(
                                item: _postDetailPresenter.state.postDetail,
                              ),
                              const CommentPostDetail(),
                            ],
                          ),
                        ),
                      ),
                      const InputSticker()
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
}
