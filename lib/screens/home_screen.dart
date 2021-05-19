import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:webview_flutter_plus/webview_flutter_plus.dart';

import 'splash.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: WebViewPlus(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            controller.loadUrl('assets/html_FR/index.html');
          },

        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
          child: const Icon(Icons.home, color: Colors.black),
          backgroundColor: Colors.lightBlueAccent.withOpacity(0.5),

        ),

    );
  }



  }



