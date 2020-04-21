
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {

@override 
Widget build (BuildContext context) {
  return LayoutBuilder(
    builder: (context, constraints){
      if(constraints.maxWidth>1200){
        //computers
        return DesktopNavbar();
      } else if(constraints.maxWidth > 800 && constraints.maxWidth < 1200){
        //tablets
        return TabletsNavbar();
      } else {
        //mobile views
        return MobileNavbar();
      }
    },
  );
}
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text(
            'Samuel Ezedi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text("Home", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            Text("About Us",style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            Text("Portfolio", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            MaterialButton(
              onPressed: (){
                print('hello Samuel');
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text('Join',style: TextStyle(color: Colors.white)),
              padding: EdgeInsets.all(10),
              color: Colors.pink,)
            
          ],)
        ],)
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Column(
          children: <Widget>[
          Text(
            'Samuel Ezedi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
            ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text("Home", style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
              Text("About Us",style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
              Text("Portfolio", style: TextStyle(color: Colors.white),),
            ],),
          )
        ],)
      ),
    );
  }
}

class TabletsNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text(
            'Samuel Ezedi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text("Home", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            Text("About Us",style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            Text("Portfolio", style: TextStyle(color: Colors.white),),
            SizedBox(width: 30,),
            MaterialButton(
              onPressed: (){
                print('hello Samuel');
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text('Join',style: TextStyle(color: Colors.white)),
              padding: EdgeInsets.all(10),
              color: Colors.pink,)
            
          ],)
        ],)
      ),
    );
  }
}