
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:twostep/_routing/routes.dart';
import 'package:twostep/utils/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget
{
  @override
  _LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  int radioValue = -1;
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: primaryDark));

    final pageTitle = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Log In.",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 45.0,

          ),
        ),
        Text(
          "Well Come",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );

    String _validateEmail(String value) {
      if (value.isEmpty) {

        return "Enter email address";

      }
      String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
          "\\@" +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
          "(" +
          "\\." +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
          ")+";
      RegExp regExp = new RegExp(p);

      if (regExp.hasMatch(value)) {
        return null;
      }

      return 'Email is not valid';
    }

    String _validatePassword(String value) {
      if (value.length > 5) {
        return null;
      }

      return 'Password must be upto 6 characters';
    }

    final emailFeild = TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        labelStyle: TextStyle(color: Colors.orange),
        prefixIcon: Icon(
            LineIcons.envelope,
          color: Colors.orange,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),

      ),

      onSaved: (String value) {
        email = value;
      },
      validator:_validateEmail,
      keyboardType:TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,

    );

    final passwordFeild = TextFormField(

      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.orange),
        prefixIcon: Icon(LineIcons.lock,
        color: Colors.orange,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
      onSaved: (String value) {
        password = value;
      },
      validator: _validatePassword,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
    );

    final loginFrom =  Padding
      ( padding: EdgeInsets.only(top: 30.00),
      child: Form(
          key: _formKey,
          child: Column(
          children: <Widget>[
            emailFeild,
            passwordFeild
          ],
        )
      )
    );

    final loginButton = Container(
      margin: EdgeInsets.only(top: 60.00,bottom: 20.00),
      height: 60.00,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.00),
        border: Border.all(color: Colors.white),
        //color: Colors.white,
        color: Colors.transparent,

      ),
    child: RaisedButton(
        elevation: 5.00,
        onPressed: () =>
            Fluttertoast.showToast(msg: "This is Center Short Toast", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0),
          //Navigator.pushNamed(context, homeViewRoute),
        color: Colors.white,
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(7.0),
    ),
      child: Text(
          'SIGN IN',
           style: TextStyle(
             fontWeight: FontWeight.w600,
             fontSize: 20.0,
           ),),
    ),

    );

    final forgotPassword = Padding(
      padding: EdgeInsets.only(top: 50.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, firstViewRoute),
        child: Center(
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );

    final newUser = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, firstViewRoute),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New User?',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              ' Create account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 130,left: 30.00,right: 30.00),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              pageTitle,
              loginFrom,
              loginButton,
              forgotPassword,
              newUser,
            ],
          ),
        ),
      ),
    );



  }

}



