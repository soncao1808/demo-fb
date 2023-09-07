import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/create_post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post_history/search_post_history.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Item {
  late String icon;
  late Function onTap;

  Item(this.icon, this.onTap);
}

class HeaderHome extends BasePage {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
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
          final List<Item> listIcon = [
            Item(
              AppIcons.icPlus,
              () {
                navigationEventsHelper(const CreatePostPage());
              },
            ),
            Item(
              AppIcons.icSearch,
              () {
                navigationEventsHelper(const SearchPostHistoryPage());
              },
            ),
            Item(
              AppIcons.icChat,
              () {},
            )
          ];

          return Container(
            padding: EdgeInsets.only(
              top: 20.0 + mediaQuery.padding.top,
              right: 16.0,
              left: 16.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: context.colors.backgroundSecondary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          "F&B",
                          style: AppTextStyles.labelBold20.copyWith(
                            color: context.colors.label,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: listIcon
                              .map(
                                (e) => Row(
                                  children: [
                                    const SizedBox(width: 12.0),
                                    GestureDetector(
                                      onTap: () {
                                        e.onTap();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          color: context.colors.cloudGray,
                                        ),
                                        child: SvgPicture.asset(
                                          e.icon,
                                          width: 20.0,
                                          height: 20.0,
                                          color: context.colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 12.0),
              ],
            ),
          );
        },
      );
}
