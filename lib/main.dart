import 'package:flutter/material.dart';
import 'package:test12/safep.dart';
import 'package:test12/worldp4.dart';

import 'indpage.dart';
import 'infop3.dart';
void main(){
 runApp(Myapp()) ;
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
       scaffoldBackgroundColor:Colors.brown ,
        primaryColor: Colors.blueAccent,
        primarySwatch:Colors.brown
      ),
      home: HomePage(),
       routes: <String , WidgetBuilder>{
        '/c':(BuildContext context) => new Mywebp4(),// 3 world
        '/b':(BuildContext context) => new Myappp(),//2  info
        '/a':(BuildContext context) => new Myapp2s(),//1 safety
        '/d':(BuildContext context) => new Mywebp1(),//4 india
       },
      
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return //MaterialApp(
      //home:
       Scaffold(
        appBar: AppBar(
        title: Text('covid-19 awareness'),
        backgroundColor: Colors.deepOrange.withOpacity(0.3),
        ),
        drawer: new MydraWer(),
        backgroundColor: Colors.brown,
        body: Center(
          
          child: SingleChildScrollView(//scroll page
            scrollDirection: Axis.vertical,
             child: Container( 
              // constraints: BoxConstraints.expand(),
       //iee banglore logo       
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,//        space widget
                children: <Widget>[
                  Image(image: AssetImage('images/covidx.png')),
                  Row(
                    
                    children: <Widget>[
                       new Imagebutton(
                        imagename:'images/safety.jpg',
                        pagename: '/a',),
                       new Imagebutton(
                        imagename:'images/vvd.jpeg',
                        pagename: '/b',),
                       ]
                   ),
                  Row(
                    children: <Widget>[
                     new ImageTex(tex: 'CLICK SAFETY FOR covid19 SAFETY & MYTHS',),
                     Container(height:50,width: 20,), 
                     new ImageTex(tex: 'CLICK VIRUS for COVID19 info',),
                    ]
                  ),
                  
                  Container(height:20),
                  Row(
                    children: <Widget>[
                      new Imagebutton(
                        imagename:'images/world.jpg',
                        pagename: '/c',),
                       new Imagebutton(
                        imagename:'images/india.jpg',
                        pagename: '/d',),
                    ]
                  ),
                  Row(
                    children: <Widget>[
                     new ImageTex(tex: 'CLICK WORLD FOR covid19 in WORLD',),
                     Container(height:50,width: 20,), 
                     new ImageTex(tex: 'CLICK INDIA FOR covid19 in INDIA',),
                    ]
                  )
                  ,
                  Container(height:20)
                  ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('developed by:',
                      style: TextStyle( fontSize:20,
                      color: Colors.white12),),
                      Container(width: 17,),
                      Text('Shreyash Bandekar',
                      style: TextStyle( fontSize:30,
                      color: Colors.white30),),
                    ],
                  )
                ]
              ),
            ),
          ),
        ),
      );
      
    //);
  }
}

class ImageTex extends StatelessWidget {
  ImageTex({@required this.tex});
 final String tex;
  @override
  Widget build(BuildContext context) {
    return Expanded(                                // world image TEXT
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10.0,8.0, 8.0,8.0),
      child: Container(
        height: 40,
        color: Colors.white.withOpacity(.5),
        child: Center(
                  child: Text(tex,
          style:TextStyle(//fontSize: 12,
           color: Colors.brown),
            textAlign:TextAlign.center),
        )),
    ),
    );
  }
}

class Imagebutton extends StatelessWidget {
  Imagebutton({ @required this.imagename,@required this.pagename,});
  final String imagename;
  final String pagename;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(                            //safety image button
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: FlatButton(
          onPressed: ()=> Navigator.of(context).pushNamed(pagename), 
          child: Image(
            image: AssetImage(imagename),
          ),
        ),
      ),
    );
  }
}

class MydraWer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new  Drawer(
          child: Column(
            children: <Widget>[
            new ListTile(
              title: new Text('links '),
              trailing: new Icon(Icons.link),
              onTap:()=> Navigator.of(context).pushNamed('/a'),
                //ToDO: something or list for next page 
            ),
            new Divider(),
            new ListTile(
              title: new Text('info '),
              trailing: new Icon(Icons.info),
              onTap:()=> Navigator.of(context).pushNamed('/b'),//ToDO: something or list for next page 
            ),
            new Divider(),
            new ListTile(
              title: new Text('the page '),
              trailing: new Icon(Icons.link),
              onTap:()=> Navigator.of(context).pushNamed('/c'),
            ),
            ]
          ),
        );
  }
}