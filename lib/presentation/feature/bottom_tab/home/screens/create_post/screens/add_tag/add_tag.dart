/* P-04-2 add location */
import 'package:dartx/dartx.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_tag/components/select_tag.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar_debounce.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/add_tag_presenter.dart';
import 'bloc/add_tag_state.dart';
import 'components/item_tag.dart';

class AddTagPage extends BasePage {
  final List<UserTag> defaultTag;
  const AddTagPage({
    required this.defaultTag,
    super.key,
  });

  @override
  State<AddTagPage> createState() => _AddTagPageState();
}

class _AddTagPageState extends BasePageState<AddTagPage> {
  final AddTagPresenter _addTagPresenter = injector.get<AddTagPresenter>();

  @override
  void initState() {
    super.initState();
    _addTagPresenter.init(widget.defaultTag);
  }

  @override
  void dispose() {
    _addTagPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundWhite,
      label: AppLocalizations.of(context)!.text_create_post_tag_friend,
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
            _addTagPresenter.handleNext();
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
      BlocConsumer<AddTagPresenter, AddTagState>(
        bloc: _addTagPresenter,
        listenWhen: (AddTagState previous, AddTagState current) =>
            previous.status != current.status ||
            previous.selectTag != current.selectTag,
        listener: (BuildContext context, AddTagState state) {},
        builder: (BuildContext context, AddTagState state) {
          if (state.status == AddTagPageStatus.addTagLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: Column(
              children: [
                CustomSearchBarDebounce(
                  hintText: AppLocalizations.of(context)!
                      .text_create_post_search_friend,
                  value: state.searchValue,
                  onSearch: (p0) {},
                ),
                SizedBox(height: state.listTag.isNotEmpty ? 0 : 8),
                state.listTag.isNotEmpty
                    ? SelectTag(
                        data: state.selectTag,
                        onRemove: (val) {
                          _addTagPresenter.updateSelectTag(val);
                        },
                      )
                    : Container(),
                Expanded(
                  child: CustomList(
                    padding: EdgeInsets.zero,
                    data: state.listTag,
                    page: 1,
                    totalPage: 20,
                    item: (int index) => Column(
                      children: [
                        ItemTag(
                          item: state.listTag[index],
                          onSelect: (val) {
                            _addTagPresenter.updateSelectTag(val);
                          },
                          checked: state.selectTag.firstOrNullWhere((element) {
                                return element.id == state.listTag[index].id;
                              }) !=
                              null,
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
