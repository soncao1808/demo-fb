import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';

class BottomSheetHelper {
  static void showBottomSheet({required Widget body}) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: context.colors.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        builder: (BuildContext context) => buildBottomSheetContainer(body: body));
  }

  static Widget buildBottomSheetContainer({required Widget body}) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 16.0,
        left: 16.0,
        right: 16.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildHeaderLine(context),
          const SizedBox(height: 16.0),
          body,
        ],
      ),
    );
  }

  static Widget buildHeaderLine(BuildContext context) {
    return Container(
      width: 30.0,
      height: 2,
      decoration: BoxDecoration(
        color: context.colors.mistyQuartz,
        borderRadius: BorderRadius.circular(200),
      ),
    );
  }
}
