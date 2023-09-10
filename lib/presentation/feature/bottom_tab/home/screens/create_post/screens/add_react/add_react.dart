/* P-05 add react */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/data/models/react/react.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar_debounce.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/add_react_presenter.dart';
import 'bloc/add_react_state.dart';
import 'components/item_react.dart';

class AddReactPage extends BasePage {
  final React? defaultReact;
  const AddReactPage({
    this.defaultReact,
    super.key,
  });

  @override
  State<AddReactPage> createState() => _AddReactPageState();
}

class _AddReactPageState extends BasePageState<AddReactPage> {
  final AddReactPresenter _addReactPresenter =
      injector.get<AddReactPresenter>();

  @override
  void initState() {
    super.initState();
    _addReactPresenter.init(widget.defaultReact);
  }

  @override
  void dispose() {
    _addReactPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundWhite,
      label: AppLocalizations.of(context)!.text_create_post_add_react_title,
      isBorderBottom: false,
      labelStyle: TextStyle(
        color: context.colors.black,
      ),
      isCenterTitle: true,
      customIcBack: Icon(
        Icons.close,
        color: context.colors.black,
      ),
      actions: <Widget>[
        GestureDetector(
          onTap: () {
            _addReactPresenter.handleNext();
            Navigator.pop(context);
          },
          child: Text(
            AppLocalizations.of(context)!.text_common_next1,
            style: AppTextStyles.labelMedium16.copyWith(
              color: context.colors.textSecondary,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<AddReactPresenter, AddReactState>(
        bloc: _addReactPresenter,
        listenWhen: (AddReactState previous, AddReactState current) =>
            previous.status != current.status ||
            previous.selectReact != current.selectReact,
        listener: (BuildContext context, AddReactState state) {},
        builder: (BuildContext context, AddReactState state) {
          if (state.status == AddReactPageStatus.addReactLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: Column(
              children: [
                CustomSearchBarDebounce(
                  hintText: AppLocalizations.of(context)!
                      .text_create_post_search_react,
                  value: state.searchValue,
                  onSearch: (p0) {},
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: CustomList(
                    padding: EdgeInsets.zero,
                    data: state.listReact,
                    page: 1,
                    totalPage: 20,
                    item: (int index) => Column(
                      children: [
                        ItemReact(
                          item: state.listReact[index],
                          onSelect: (val) {
                            _addReactPresenter.updateSelectReact(val);
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Divider(height: 1),
                        ),
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
