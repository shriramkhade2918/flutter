import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewData extends StatefulWidget {
  String url;
  WebViewData({super.key, required this.url});

  @override
  State<WebViewData> createState() => _WebViewDataState();
}

late WebViewController _controller;

class _WebViewDataState extends State<WebViewData> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController()..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
