import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fbapp/core/resources/resources.dart';

enum AppBarActions { none, share, add, favorite }

mixin BasePageMixin {
  Widget buildBody(BuildContext context);

  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return null;
  }

  Widget? buildBottomNavigationBar(BuildContext context) {
    return null;
  }

  Widget? buildBottomSheet(BuildContext context) {
    return null;
  }

  Widget? buildDrawer(BuildContext context) {
    return null;
  }

  Widget? buildEndDrawer(BuildContext context) {
    return null;
  }

  Widget? buildFloatActionButton(BuildContext context) {
    return null;
  }

  Widget buildPage(BuildContext context) => Scaffold(
        backgroundColor: context.colors.background,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: buildAppBar(context),
        body: buildBody(context),
        bottomNavigationBar: buildBottomNavigationBar(context),
        bottomSheet: buildBottomSheet(context),
        drawer: buildDrawer(context),
        endDrawer: buildEndDrawer(context),
        floatingActionButton: buildFloatActionButton(context),
      );

  bool get resizeToAvoidBottomInset => false;

  AppBar makeAppBar(
    BuildContext context,
    String title, {
    bool shouldShowBack = true,
    final void Function()? onTapAction,
    AppBarActions actionType = AppBarActions.none,
  }) {
    List<Widget> action() {
      switch (actionType) {
        case AppBarActions.share:
          {
            return <Widget>[
              GestureDetector(
                onTap: () => onTapAction?.call(),
                child: Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Icon(
                    Icons.share_outlined,
                    color: context.colors.title,
                  ),
                ),
              )
            ];
          }
        case AppBarActions.add:
          {
            return <Widget>[
              GestureDetector(
                onTap: () => onTapAction?.call(),
                child: Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Icon(
                    Icons.add,
                    color: context.colors.title,
                  ),
                ),
              )
            ];
          }
        default:
          {
            return <Widget>[];
          }
      }
    }

    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      title: Text(
        title,
        style: AppTextStyles.labelBold16.copyWith(
          color: context.colors.textPrimary,
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: context.colors.backgroundSecondary,
      leading: shouldShowBack
          ? GestureDetector(
              onTap: () => Navigator.of(context).maybePop(),
              child: Image.asset(
                AppIcons.icArrowLeft,
                scale: 20,
                color: context.colors.textPrimary,
              ),
            )
          : GestureDetector(onTapCancel: () {}),
      actions: action(),
    );
  }
}
