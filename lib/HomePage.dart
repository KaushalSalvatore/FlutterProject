
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

//String url = "http://165.227.90.184:8000/#login";

void main() => runApp(new HomePage());


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Testing Demo'),
        )

     /* body: WebviewScaffold( url: url),*/
    );

  }
}