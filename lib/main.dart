import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title',
      theme: ThemeData(

      ),
      home: Grahshri(),
    );
  }
}

class Grahshri extends StatefulWidget {
  @override
  _GrahshriState createState() => _GrahshriState();
}

class _GrahshriState extends State<Grahshri> {
  @override
  Widget build(BuildContext context) {


    return WebviewScaffold(

      url: "http://jindex.koyauniversity.org/",
      appCacheEnabled: true,
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(

        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),

    );
  }
}

