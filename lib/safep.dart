import'package:flutter/material.dart';
class Myapp2s extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp2s> {
  int i=1;
  int j=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: 
          //MaterialApp(
        
        //home:
         Scaffold(
          appBar: AppBar(
            title: Text('safety & mythbuster '),
            backgroundColor: Colors.blue.withOpacity(.7)
          ),
          backgroundColor: Colors.blue.withOpacity(.4) ,
          body: Center(
            
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Center(
                      child: new Text('safety',
                      style: TextStyle( fontSize:30,
                      color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(child: Image(image: AssetImage('images/masks-$i.png'))),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton.icon(
                          label: Text('PREVIOUS'),
                          color: Colors.greenAccent,
                          highlightElevation: 8.0,
                            onPressed:()=> setState(() {
                            if(i<=0)
                            i=7;
                            else
                            i--;
                          }) , 
                          icon: Icon(Icons.keyboard_arrow_left),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton.icon(
                          label: Text('NEXT'),
                          color: Colors.green,
                          highlightElevation: 8.0,
                          onPressed:()=> setState(() {
                            if(i>=8)
                            i=1;
                            else
                            i++;
                          }) , 
                          icon: Icon(Icons.keyboard_arrow_right),
                        ),
                      ),
                      
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top :12.0),
                    child: Center(
                      child: new Text('mythbusters',
                      
                        style: TextStyle( fontSize:30,
                        color: Colors.white),
                        ),
                    ),
                  ),
                  Expanded(child: Image(image: AssetImage('images/myth$j.png'))),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton.icon(
                          label: Text('PREVIOUS'),
                          color: Colors.indigoAccent ,
                           onPressed:(){ setState(() {
                            if(j<=0)
                            j=13;
                            else
                            j--;
                          });
                          } , 
                          icon: Icon(Icons.keyboard_arrow_left),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton.icon(
                          label: Text('NEXT'),
                          color: Colors.blueAccent,
                          highlightElevation: 8.0,
                          onPressed:()=> setState(() {
                            if(j>=14)
                            j=1;
                            else
                            j++;

                            
                          }) , 
                          icon: Icon(Icons.keyboard_arrow_right),
                        ),
                      ),
                      
                    ]
                  ),
                ]
              ),
            ),
          ),
        ),
        
      );
    //);
  }
}