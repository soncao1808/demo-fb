/* P-04-2 add location */
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_location/components/item_location.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_location/components/select_ocation.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar_debounce.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/add_location_presenter.dart';
import 'bloc/add_location_state.dart';

class AddLocationPage extends BasePage {
  const AddLocationPage({
    super.key,
  });

  @override
  State<AddLocationPage> createState() => _AddLocationPageState();
}

class _AddLocationPageState extends BasePageState<AddLocationPage> {
  final AddLocationPresenter _addLocationPresenter =
      injector.get<AddLocationPresenter>();

  @override
  void initState() {
    super.initState();
    _addLocationPresenter.init();
  }

  @override
  void dispose() {
    _addLocationPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundWhite,
      label: AppLocalizations.of(context)!.text_create_post_add_location,
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
      BlocConsumer<AddLocationPresenter, AddLocationState>(
        bloc: _addLocationPresenter,
        listenWhen: (AddLocationState previous, AddLocationState current) =>
            previous.status != current.status ||
            previous.selectLocation != current.selectLocation,
        listener: (BuildContext context, AddLocationState state) {},
        builder: (BuildContext context, AddLocationState state) {
          if (state.status == AddLocationPageStatus.addLocationLoading) {
            return const Loading();
          }
          return BaseContainer(
            backgroundColor: context.colors.backgroundWhite,
            hasBackgroundImage: false,
            body: Column(
              children: [
                state.selectLocation != null
                    ? Selectlocation(
                        item: state.selectLocation,
                        onRemove: () {
                          _addLocationPresenter.updateSelectLocation(null);
                        },
                      )
                    : CustomSearchBarDebounce(
                        hintText: AppLocalizations.of(context)!
                            .text_create_post_search_location,
                        value: '',
                        onSearch: (p0) {},
                      ),
                const SizedBox(height: 8),
                Expanded(
                  child: CustomList(
                    padding: EdgeInsets.zero,
                    data: state.listLocation,
                    page: 1,
                    totalPage: 20,
                    item: (int index) => Column(
                      children: [
                        ItemLocation(
                          item: state.listLocation[index],
                          onSelect: (val) {
                            _addLocationPresenter.updateSelectLocation(val);
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
