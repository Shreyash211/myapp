
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Mywebp4 extends StatefulWidget {
  @override
  _Mywebp4State createState() => _Mywebp4State();
}

class _Mywebp4State extends State<Mywebp4> {
   final Completer<WebViewController> _controller=Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('covid19 world')
      ),
      body: SingleChildScrollView(
              child: Center(
                child: Container(
          color: Colors.blueGrey,
          height: 720,
          width: 420,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Expanded(flex:1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                 height: 70,
                 width: 350,
                 alignment:Alignment.center, 
                 decoration: new BoxDecoration(
                //  image: DecorationImage(
                //  image: AssetImage('images/covid19b.jpg')
                //   ),
                  borderRadius:new BorderRadius.circular(30),
                  color: Colors.black45.withOpacity(0.5),
                 ),
                 child:Text('world cases',
                  style:TextStyle(
                  color:Colors.orangeAccent,
                  fontSize:40,
                  fontWeight:FontWeight.w800
                  ))
                 ),
          ),
           ),
          Expanded(flex: 10,
                        child: Container(
                margin: EdgeInsets.all(8),
                height: 570,
            width: 400,
             color: Colors.black45,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: WebView(
                  initialUrl: "https://www.worldometers.info/coronavirus",
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (WebViewController webViewController){
                  _controller.complete(webViewController);
                      },
                      ),
                ),
            ),
          ),
                ],
            ),
        ),
              ),
      ),
      );
  }
}