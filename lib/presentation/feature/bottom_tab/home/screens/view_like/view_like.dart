/* N-02 post detail */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/view_like/components/item_view_like.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/view_like_presenter.dart';
import 'bloc/view_like_state.dart';

class ViewLikePage extends BasePage {
  const ViewLikePage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<ViewLikePage> createState() => _ViewLikePageState();
}

class _ViewLikePageState extends BasePageState<ViewLikePage> {
  final ViewLikePresenter _viewLikePresenter =
      injector.get<ViewLikePresenter>();

  @override
  void initState() {
    super.initState();
    _viewLikePresenter.init(widget.id);
  }

  @override
  void dispose() {
    _viewLikePresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundWhite,
      label: AppLocalizations.of(context)!.text_view_like_title,
      isBorderBottom: true,
      labelStyle: TextStyle(
        color: context.colors.black,
      ),
      isCenterTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ViewLikePresenter, ViewLikeState>(
        bloc: _viewLikePresenter,
        listenWhen: (ViewLikeState previous, ViewLikeState current) =>
            previous.status != current.status,
        listener: (BuildContext context, ViewLikeState state) {},
        builder: (BuildContext context, ViewLikeState state) {
          if (state.status == ViewLikePageStatus.viewLikeLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: CustomList(
              padding: EdgeInsets.zero,
              data: state.listViewLike,
              page: 1,
              totalPage: 20,
              item: (int index) =>
                  ItemViewLike(item: state.listViewLike[index]),
            ),
          );
        },
      );
}
