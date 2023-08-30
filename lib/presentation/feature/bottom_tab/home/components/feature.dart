import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/events.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class Item {
  late String icon;
  late String name;
  late Function onTap;

  Item(this.icon, this.name, this.onTap);
}

class FeatureHome extends BasePage {
  const FeatureHome({super.key});

  @override
  State<FeatureHome> createState() => _FeatureHomeState();
}

class _FeatureHomeState extends State<FeatureHome> {
  final HomePresenter _homePresenter = injector.get<HomePresenter>();
  final MainPagePresenter _mainPagePresenter =
      injector.get<MainPagePresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<HomePresenter, HomeState>(
        bloc: _homePresenter,
        listenWhen: (HomeState previous, HomeState current) =>
            previous.infoUser != current.infoUser,
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) {
          final MediaQueryData mediaQuery = MediaQuery.of(context);
          final List<Item> listFeature = [
            Item(
              AppIcons.icFeatureEvent,
              AppLocalizations.of(context)!.text_feature_home_event,
              () {
                navigationEventsHelper(const EventsPage());
              },
            ),
            Item(
              AppIcons.icFeatureRecruiment,
              AppLocalizations.of(context)!.text_feature_home_recruitment,
              () {},
            ),
            Item(
              AppIcons.icFeatureTrain,
              AppLocalizations.of(context)!.text_feature_home_train,
              () {},
            ),
            Item(
              AppIcons.icFeaturePromotion,
              AppLocalizations.of(context)!.text_feature_home_promotion,
              () {},
            )
          ];

          return Container(
            padding: EdgeInsets.only(
              top: 20.0 + mediaQuery.padding.top,
              right: 16.0,
              left: 16.0,
              bottom: 16.0,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listFeature
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          e.onTap();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(48),
                                  ),
                                  color: context.colors.backgroundThirdary,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    e.icon,
                                    width: 20.0,
                                    height: 20.0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                e.name,
                                style: AppTextStyles.labelRegular14.copyWith(
                                  color: context.colors.label,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        },
      );
}
