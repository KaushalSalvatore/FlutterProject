
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String url = "https://investelite.katsamsoft.in/index.php?order_id=0f666828ea1f4f418a22&user_id=Options";

class WebViewPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('User LogIn'),
      ),

      body : WebviewScaffold( url: url),
    );

  }

}