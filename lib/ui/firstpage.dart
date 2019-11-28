import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twostep/_routing/routes.dart';
import 'package:twostep/ui/homePage.dart';
import 'package:twostep/utils/colors.dart';
import 'package:twostep/utils/utils.dart';


class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryDark),
    );
    final logo =  Container(
      margin: const EdgeInsets.only(bottom: 20.0),

      height: 110.00,
     width: 200.00 ,
      decoration: BoxDecoration(
      image: DecorationImage(image: AvailableImages.appLogo,
      fit: BoxFit.fill,
      ),
      ),
    );
    final appName = Column(
      children: <Widget>[
        Text(
      AppConfig.appName,
      style: TextStyle(

        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30.0,
      ),
    ),
        Text(
        AppConfig.appTagline,
        style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w500
    ),
    )
      ],
    );

    final loginBtn = InkWell(
      onTap: () => Navigator.pushNamed(context, loginViewRoute),
      child: Container(
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
          color: Colors.transparent,
        ),
        child: Center(
          child: Text(
            'LOG IN',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

    final registerBtn = Container(
      margin: EdgeInsets.only(top: 20.00),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.pushNamed(context, signupViewRoute),
        color: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          'SIGN UP',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
        ),
      ),
    );

    final buttons = Padding(
    padding: EdgeInsets.only(
      top: 60.00,
      left: 30.00,
      right: 30.00,
      bottom: 30.00
    ),

    child: Column(
      children: <Widget>[
        loginBtn,registerBtn
      ],
    ),
    );


    return Scaffold(
      body: WillPopScope(
          child: Container(child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 70.0),
            decoration: BoxDecoration(gradient: primaryGradient),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[logo,appName,buttons],
            ),
          ),
          /*Positioned(
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AvailableImages.homePage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            )*/
        ],
        ),
          ),
          onWillPop: ()
          {
            return SystemNavigator.pop();

            /*showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Confirm Exit"),
                    content: Text("Are you sure you want to exit?"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("YES"),
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                      ),
                      FlatButton(
                        child: Text("NO"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                }
            );*/
            return Future.value(true);
          },
      ) ,

    );
  }

}

