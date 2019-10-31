import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twostep/HomePage.dart';

void main() => runApp(new SplashPage());

class SplashPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }


}

class SplashScreenState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    loadData();
  }
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
        children: <Widget>[
      Center(
      child: new Image.asset(
        'images/katsamsoft.png',
        width: size.width,
        height: size.height,
      ),



    ),
          Container(

            margin: EdgeInsets.only(top: 130),
      child: Center
    (

          child: const CircularProgressIndicator(strokeWidth: 5.0,
            valueColor : AlwaysStoppedAnimation(Colors.blue),
          ),


  ),
)

        ],
      )

    );
  }
}