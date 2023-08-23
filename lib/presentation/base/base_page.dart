import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/custom_dialog.dart';

import '../../injection/injector.dart';
import '../../utilities/helpers/error_helper/error_helper.dart';
import '../../utilities/helpers/logger_helper/logger_helper.dart';
import 'base_page_mixin.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
}

abstract class BasePageState<Page extends BasePage> extends State<Page>
    with BasePageMixin {
  final LoggerHelper loggerHelper = injector.get<LoggerHelper>();
  final ErrorHelper errorHelper = injector.get<ErrorHelper>();

  @override
  void initState() {
    super.initState();
    onInitState();
  }

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: onWillPop,
        child: buildPage(context),
      );

  Future<bool> onWillPop() async => true;

  @mustCallSuper
  void onInitState() {
    loggerHelper.info('Initializing state of [$runtimeType]');
  }

  @mustCallSuper
  void onDispose() {
    loggerHelper.info('Disposing [$runtimeType]');
  }

  void onError(Object? error) {
    if (error == null) {
      return;
    }
    errorHelper.handleError(error);
  }

  Future<void> showSnackbar({
    required BuildContext context,
    required String message,
    SnackBarAction? action,
    Duration? duration,
    Color? backgroundColor,
    double? fontSize,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration ?? const Duration(seconds: 2),
        action: action,
        backgroundColor: backgroundColor ?? Colors.black,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Future<void> showCustomDialog(
      {required String title,
      required String subTitle,
      List<String> buttonTitles = const <String>[],
      int indexOfBtHighlight = 0,
      bool isHorizontalDirection = true,
      bool isShowButton = true,
      Function(int? index)? onPressButton}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.only(
              top: MediaQuery.of(this.context).padding.top,
            ),
            child: CustomDialog(
              title: title,
              subTitle: subTitle,
              indexOfBtHighlight: indexOfBtHighlight,
              isHorizontalDirection: isHorizontalDirection,
              isShowButton: isShowButton,
              buttonTitles: buttonTitles,
              onPressButton: onPressButton,
            ),
          ),
        );
      },
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }

  Future<void> showCustomDialogContent(
      {required Widget content,
      List<String> buttonTitles = const [],
      int indexOfBtHighlight = 0,
      bool isShowButton = true,
      bool isDisable = false,
      Function(int? index)? onPressButton}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      builder: (BuildContext context) {
        final List<Expanded> horizontalBts = buttonTitles
            .asMap()
            .map((int index, String item) {
              return MapEntry(
                  index,
                  Expanded(
                    child: Container(
                      height: 40.w,
                      margin: const EdgeInsets.only(right: 8),
                      child: TextButton(
                          onPressed: () {
                            if (indexOfBtHighlight == index) {
                              if (!isDisable) {
                                Navigator.pop(context);
                                onPressButton?.call(index);
                              }
                            } else {
                              Navigator.pop(context);
                              onPressButton?.call(index);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                indexOfBtHighlight == index
                                    ? !isDisable
                                        ? context.colors.textPrimary
                                        : context.colors.background
                                    : context.colors.textPrimary),
                          ),
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 14,
                              color: indexOfBtHighlight == index
                                  ? !isDisable
                                      ? Colors.white
                                      : context.colors.textPrimary
                                  : context.colors.textPrimary,
                            ),
                          )),
                    ),
                  ));
            })
            .values
            .toList();

        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.transparent,
            child: GestureDetector(
              onTapCancel: () => {},
              child: SafeArea(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: (() {
                                Navigator.pop(context);
                                onPressButton?.call(null);
                              }),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 16),
                                decoration: BoxDecoration(
                                    color: colorsLight.textPrimary,
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(4),
                                child: Icon(
                                  Icons.close,
                                  color: context.colors.textPrimary,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          content,
                          if (isShowButton)
                            Row(
                              children: horizontalBts,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }

  Widget customItemSwitch({
    required String title,
    required bool isSwitch,
    required Function(bool val) onSwitch,
    String? icon = "",
    bool? isShowIconLeft = false,
    bool? isShowBorderBottom = false,
    bool? isSwitchButton = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.backgroundSecondary,
        border: isShowBorderBottom == true
            ? Border(
                bottom: BorderSide(
                    width: 1,
                    color: context.colors.backgroundPrimary,
                    style: BorderStyle.solid),
              )
            : null,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 19,
              vertical: 10,
            ),
            child: Row(
              children: [
                isShowIconLeft == true
                    ? Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: isShowIconLeft == true
                            ? Image.asset(
                                icon!,
                                color: context.colors.title,
                                width: 14.h,
                                height: 15.w,
                              )
                            : null,
                      )
                    : Container(),
                Expanded(
                  child: Text(
                    title,
                    style: AppTextStyles.labelMedium14.copyWith(
                      color: context.colors.textPrimary,
                    ),
                  ),
                ),
                Switch.adaptive(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  thumbColor:
                      MaterialStatePropertyAll(context.colors.textPrimary),
                  activeColor: context.colors.textPrimary,
                  value: isSwitch,
                  onChanged: (bool value) => onSwitch(value),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showPickerData(
      BuildContext context, List<String> dataList, Function setValue) async {
    Picker picker = Picker(
        height: MediaQuery.of(context).size.height / 3,
        adapter: PickerDataAdapter(
          data: dataList
              .map((String e) => PickerItem(text: Text(e)))
              .whereType<PickerItem<dynamic>>()
              .toList(),
        ),
        cancelText: AppLocalizations.of(context)!.text_common_cancel,
        cancelTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: context.colors.title,
        ),
        confirmText: AppLocalizations.of(context)!.text_common_choose,
        confirmTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: context.colors.title,
        ),
        textStyle: TextStyle(
          color: context.colors.textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        selectedTextStyle: TextStyle(
          color: context.colors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.center,
        backgroundColor: context.colors.backgroundPrimary,
        onConfirm: (Picker picker, List value) => setValue(value[0]));
    picker.showBottomSheet(context);
  }
}

extension BaseWidget on Widget {
  static Future<void> showCustomDialogContent(
      {required Widget content,
      required BuildContext context,
      List<String> buttonTitles = const [],
      int indexOfBtHighlight = 0,
      bool isShowButton = true,
      bool isDisable = false,
      Function(int? index)? onPressButton}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      builder: (BuildContext context) {
        final List<Expanded> horizontalBts = buttonTitles
            .asMap()
            .map((int index, String item) {
              return MapEntry(
                  index,
                  Expanded(
                    child: Container(
                      height: 40.w,
                      margin: const EdgeInsets.only(right: 8),
                      child: TextButton(
                          onPressed: () {
                            if (indexOfBtHighlight == index) {
                              if (!isDisable) {
                                Navigator.pop(context);
                                onPressButton?.call(index);
                              }
                            } else {
                              Navigator.pop(context);
                              onPressButton?.call(index);
                            }
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: indexOfBtHighlight == index
                                ? !isDisable
                                    ? context.colors.backgroundPrimary
                                    : context.colors.background
                                : context.colors.background,
                            foregroundColor: context.colors.backgroundSecondary,
                          ),
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 14,
                              color: indexOfBtHighlight == index
                                  ? !isDisable
                                      ? context.colors.backgroundSecondary
                                      : context.colors.textPrimary
                                  : context.colors.textDisable,
                            ),
                          )),
                    ),
                  ));
            })
            .values
            .toList();

        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.transparent,
            child: GestureDetector(
              onTapCancel: () => {},
              child: SafeArea(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: (() {
                                Navigator.pop(context);
                                onPressButton?.call(null);
                              }),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 16),
                                decoration: BoxDecoration(
                                    color: context.colors.background,
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(4),
                                child: Icon(
                                  Icons.close,
                                  color: context.colors.textPrimary,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          content,
                          if (isShowButton)
                            Row(
                              children: horizontalBts,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }
}
