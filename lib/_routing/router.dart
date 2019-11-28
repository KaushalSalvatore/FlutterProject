import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twostep/_routing/routes.dart';
import 'package:twostep/ui/SplashPage.dart';
import 'package:twostep/ui/firstpage.dart';
import 'package:twostep/ui/homePage.dart';
import 'package:twostep/ui/loginPage.dart';
import 'package:twostep/ui/signupPage.dart';
import 'package:twostep/ui/webviewpage.dart';

Route<dynamic> generateRoute(RouteSettings settings)
{
  switch(settings.name)
  {
    case splashViewRoute:
      return MaterialPageRoute(builder: (context) => SplashPage());

    case firstViewRoute:
      return MaterialPageRoute(builder: (context) => FirstPage());
      
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());

    case signupViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());

    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => ThemePage());

    case webViewRoute:
      return MaterialPageRoute(builder: (context) => WebViewPage());

      default:
      return MaterialPageRoute(builder: (context) => SplashPage());
  }
}