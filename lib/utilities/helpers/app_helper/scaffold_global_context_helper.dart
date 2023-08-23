import 'package:flutter/material.dart';

class ScaffoldGlobalContextHelper {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void resetKey() {
    scaffoldKey = GlobalKey<ScaffoldState>();
  }
}