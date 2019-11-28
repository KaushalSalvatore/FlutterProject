import 'dart:async';
import 'package:flutter/material.dart';
import 'package:twostep/ui/webviewpage.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new StreamBuilder(
        //  stream: bloc.darkThemeEnabled,
          initialData: false,
          builder: (context, snapshot) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
              home: HomePage(snapshot.data)),
        )
    );
  }
}

class HomePage extends StatelessWidget {
  final bool darkThemeEnabled;
  HomePage(this.darkThemeEnabled);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Kaushal Pandey"),
              accountEmail: new Text('Kaushal.katsam@gmail.com'),
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new ExactAssetImage('assets/images/background.png'),fit: BoxFit.cover)
              ),
              /*currentAccountPicture: CircleAvatar(backgroundImage: ExactAssetImage('assets/images/man2.jpg'),),*/
        currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/men/46.jpg")),
      ),

            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                value: darkThemeEnabled,
              //  onChanged: bloc.changeTheme,
              ),
            ),

            ListTile(
              //leading: Image.asset('assets/images/background.png'),
              leading: Icon(Icons.account_circle),
              title: Text('WebView Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewPage()),
                );

              },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('View Profile'),
              onTap: () {
                },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Uppdate Profile'),
              onTap: () {
                },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Current Location'),
              onTap: () {

              },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('DrawPath OnMap'),

              onTap: () {
                },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Bottom Navigation'),

              onTap: () {

              },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('LogOut'),
              onTap: () {

              },
            ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),
          ],
        ),
      ),
    );
  }
}
/*
class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}
final bloc = Bloc();
*/
