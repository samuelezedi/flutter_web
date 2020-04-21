
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        return DesktopNavbar();
      } else {
        //mobile views
        return DesktopNavbar();
      }
    },
  );
}
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1200),
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
          SizedBox(width: 10,),
          Text("About Us", style: TextStyle(color: Colors.white),),
          SizedBox(width: 10,),
          Text("Portfolio", style: TextStyle(color: Colors.white),),
          SizedBox(width: 10,),
          InkWell(
              onTap: () {
                print('hello samuel');
              },
              child: Container(
              height: 30,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Text(
                "Join", style: TextStyle(color: Colors.black),)),
          ),
          SizedBox(width: 10,),
        ],)
      ],)
    );
  }
}