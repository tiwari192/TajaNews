import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleViews extends StatefulWidget {
  final String blogurl;
  ArticleViews({this.blogurl});

  @override
  _ArticleViewsState createState() => _ArticleViewsState();
}

class _ArticleViewsState extends State<ArticleViews> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Taja'),
            Text(
              'NEWS',
              style: TextStyle(color: Colors.blue[800]),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.blogurl,
          onWebViewCreated: ((WebViewController webViewController) {
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
