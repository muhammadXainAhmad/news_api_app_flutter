import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/widgets/app_name_text.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String webUrl;
  const WebViewScreen({super.key, required this.webUrl});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.transparent)
          ..loadRequest(Uri.parse(widget.webUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgClr,
      appBar: AppBar(
        iconTheme: IconThemeData(color: blackClr, size: 32),
        backgroundColor: bgClr,
        title: AppNameText(),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
