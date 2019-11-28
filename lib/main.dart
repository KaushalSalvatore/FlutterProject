import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twostep/app.dart';
import 'package:twostep/utils/colors.dart';

void main() {
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: primaryDark
));
runApp(App());
}

