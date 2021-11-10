import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text to Handwriting !",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),),
          backgroundColor: Colors.white,
        ),
        body: WebView(
          initialUrl: "https://saurabhdaware.github.io/text-to-handwriting/#how-to-add-handwriting",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      )
  ),
  );
}
