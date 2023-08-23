import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';

import '../../../presentation/widgets/progress_indicator_platform_widget.dart';

class BaseLoadMorePage implements LoadMoreDelegate {
  @override
  Widget buildChild(LoadMoreStatus status,
      {LoadMoreTextBuilder builder = DefaultLoadMoreTextBuilder.chinese}) {
    switch (status) {
      case LoadMoreStatus.idle:
        return const ProgressIndicatorPlatformWidget();
      case LoadMoreStatus.loading:
        return const ProgressIndicatorPlatformWidget();
      case LoadMoreStatus.fail:
        return Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.refresh,
                color: Colors.redAccent,
              ),
              SizedBox(width: 5),
              Flexible(
                child: Text(
                  "ロードに失敗。再試行してください。",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.redAccent),
                ),
              )
            ],
          ),
        );
      case LoadMoreStatus.nomore:
        return Container();
    }
  }

  @override
  Duration loadMoreDelay() {
    return const Duration(milliseconds: 500);
  }

  @override
  double widgetHeight(LoadMoreStatus status) {
    switch (status) {
      case LoadMoreStatus.idle:
        return 100;
      case LoadMoreStatus.loading:
        return 100;
      case LoadMoreStatus.fail:
        return 60;
      case LoadMoreStatus.nomore:
        return double.minPositive;
    }
  }
}
