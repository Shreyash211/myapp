import'package:flutter/material.dart';
// void main(){
//   runApp(new Myappp());
// }
class Myappp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return// MaterialApp(
      //home: 
      Scaffold(
        appBar: AppBar(
          title: Text('covid-19'),
          backgroundColor: Colors.deepOrange.withOpacity(0.3),
        ),
        body: new Boody(),
        
      );//,
   //);
  }
}

  

class Boody extends StatefulWidget {
  @override
  _BoodyState createState() => _BoodyState();
}

class _BoodyState extends State<Boody> {
  int z=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/covidx.png')
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
           children: <Widget>[
             Expanded(
               flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('CORONAVIRUS \n Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.\n Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment.  Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness \n The best way to prevent and slow down transmission is be well informed about the COVID-19 virus, the disease it causes and how it spreads. Protect yourself and others from infection by washing your hands or using an alcohol based rub frequently and not touching your face. \n The COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person coughs or sneezes, so it’s important that you also practice respiratory etiquette (for example, by coughing into a flexed elbow).\n At this time, there are no specific vaccines or treatments for COVID-19. However, there are many ongoing clinical trials evaluating potential treatments. WHO will continue to provide updated information as soon as clinical findings become available',
                   style: TextStyle(color: Colors.yellow),),
                 ),
               ),
                    ),
                  ),
             ),
             Expanded(
               flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/s$z.jpg',
                height:280.0),
              ),
             ),
             Expanded(
                 flex: 1,
                  child: FlatButton(
                 onPressed: (){
                   setState(() {
                     
                     if (z>=12) {z=1;
                       
                     } else {
                       z=z+1;
                     }
                   });
                 },
                 child: Container(child: Image.asset('images/butt.jpg',
                 width: 180.0,
                 height: 250.0,
                 ),
                 ),
               ),
             )
           ]
        ),
      ),
    );
  }
}