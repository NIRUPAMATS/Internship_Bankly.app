import 'dart:io';

import 'package:flutter/material.dart';
import 'package:new_portfolio/home/screen.dart';
class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 50,),
            SizedBox(
              width:50,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen()));
              },
                child: Text('<',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),),
                style: ElevatedButton.styleFrom(primary: Color(0xff292929),shape: CircleBorder(),side: BorderSide(color: Color(0xffD9D9D9),width: 1),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
