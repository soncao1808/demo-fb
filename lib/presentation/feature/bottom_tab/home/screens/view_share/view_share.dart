/* N-08 view share */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/view_share_presenter.dart';
import 'bloc/view_share_state.dart';
import 'components/item_view_share.dart';

class ViewSharePage extends BasePage {
  const ViewSharePage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<ViewSharePage> createState() => _ViewSharePageState();
}

class _ViewSharePageState extends BasePageState<ViewSharePage> {
  final ViewSharePresenter _viewSharePresenter =
      injector.get<ViewSharePresenter>();

  @override
  void initState() {
    super.initState();
    _viewSharePresenter.init(widget.id);
  }

  @override
  void dispose() {
    _viewSharePresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundWhite,
      label: AppLocalizations.of(context)!.text_view_share_title,
      isBorderBottom: true,
      labelStyle: TextStyle(
        color: context.colors.black,
      ),
      isCenterTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ViewSharePresenter, ViewShareState>(
        bloc: _viewSharePresenter,
        listenWhen: (ViewShareState previous, ViewShareState current) =>
            previous.status != current.status,
        listener: (BuildContext context, ViewShareState state) {},
        builder: (BuildContext context, ViewShareState state) {
          if (state.status == ViewSharePageStatus.ViewShareLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: CustomList(
              padding: EdgeInsets.zero,
              data: state.listViewShare,
              page: 1,
              totalPage: 20,
              item: (int index) =>
                  ItemViewShare(item: state.listViewShare[index]),
            ),
          );
        },
      );
}
