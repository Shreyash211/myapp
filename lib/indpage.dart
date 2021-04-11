
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Mywebp1 extends StatefulWidget {
  @override
  _Mywebp1State createState() => _Mywebp1State();
}

class _Mywebp1State extends State<Mywebp1> {
   final Completer<WebViewController> _controller=Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('covid19 india')
      ),
      body: SingleChildScrollView(
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
              borderRadius:new BorderRadius.circular(30),
              color: Colors.black45.withOpacity(0.5),
          ),
          child:Text('india cases',
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
              height: 560,
            width: 400,
             color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: WebView(
                initialUrl: "https://www.covid19india.org",
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
      );
  }
}