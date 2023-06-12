import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget{
  static const String id ="Home";
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  late final WebViewController controller;
  @override
void initState(){
  super.initState();
  controller= WebViewController()
  ..loadRequest(Uri.parse('https://www.facebook.com/'),)
  ..setJavaScriptMode(JavaScriptMode.unrestricted);

}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      ),
      body: WebViewWidget(controller: controller),
      
    );
  }
}
