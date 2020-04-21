import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        padding: EdgeInsets.all(20),
        width: width,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Website \nDeveloper',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white)),
          Text(
              'We have taken each and every project handed over to us as a challenge, We have taken each and every project handed over to us as a challenge, which has helped us',
              style: TextStyle(fontSize: 16, color: Colors.white),),
          
          
           MaterialButton(
                onPressed: (){
                  print('hello Samuel');
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Text('Join',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold)),
                padding: EdgeInsets.all(10),
                color: Colors.white,),
          
        ],
      )),
      
            Container(
              width: width,
              child: Image.asset('images/banner.png')),
        
    ];
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
    builder: (context, constraints){
      if(constraints.maxWidth > 800){
        //computers
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: pageChildren(constraints.biggest.width/2.5),
          );
      } else {
        //mobile views
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  pageChildren(constraints.biggest.width),
          );
      }
    },
  );
  }
}