
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twostep/theme.dart';
import 'package:twostep/_routing/routes.dart';
import 'package:twostep/_routing/router.dart' as router;

class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      onGenerateRoute: router.generateRoute,
      initialRoute: splashViewRoute,
    );
  }

}
