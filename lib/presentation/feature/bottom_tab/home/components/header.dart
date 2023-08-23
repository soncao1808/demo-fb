import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';

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
                        child: GestureDetector(
                          onTap: () {
                            _mainPagePresenter
                                .onChangeTab(MainPageBottom.account);
                          },
                          child: Avatar(
                            url: state.infoUser?.avatar ?? '',
                            circular: 200,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                _mainPagePresenter
                                    .onChangeTab(MainPageBottom.account);
                              },
                              child: Text(
                                "Xin Chào, ${state.infoUser?.name ?? ''}",
                                style: AppTextStyles.labelBold14.copyWith(
                                  color: context.colors.label,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              "Thật vui khi thấy bạn trở lại!",
                              style: AppTextStyles.labelRegular12.copyWith(
                                color: context.colors.textPrimary,
                              ),
                            ),
                          ],
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
