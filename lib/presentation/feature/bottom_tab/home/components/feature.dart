import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/components/bottom_sheet_post.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

          return Container(
            padding: EdgeInsets.only(
              top: 20.0 + mediaQuery.padding.top,
              right: 16.0,
              left: 16.0,
            ),
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => BottomSheetPost(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      );
                    },
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
                            child: Image.asset(
                              AppIcons.icPlus,
                              width: 20.0,
                              height: 20.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          "Feature",
                          style: AppTextStyles.labelRegular14.copyWith(
                            color: context.colors.label,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                itemCount: 10,
              ),
            ),
          );
        },
      );
}
