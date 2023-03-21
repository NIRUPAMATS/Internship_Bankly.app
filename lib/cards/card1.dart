import 'dart:io';

import 'package:flutter/material.dart';
import 'package:new_portfolio/home/screen.dart';
class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  String _num='****   ****   ****   2489';
  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
             padding: EdgeInsets.only(left: 44,top: 23,bottom: 35),
              child: Row(
                children: [
                  Text('Your ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 32,color: Colors.white),),
                  Text('Bankly ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 32,color: Color(0xff24D3B5)),),
                  Text('Card',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 32,color: Colors.white),),

                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Image.asset('assets/debit-cardnew.png'),
                  Positioned(
                    right: 0,
                    top: 60,
                    child:IconButton(
                      iconSize: 50,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          flag=!flag;
                          flag? _num='4737 9618 4974 2489': _num='****   ****   ****   2489';

                        });
                      },
                      icon: Icon(
                        Icons.visibility_off,
                        size: 35,
                        color: Colors.white,
                      ),
                      style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                    )
                  ),
                  Positioned(
                      left: 20,
                      top: 80,
                      child: Text(_num,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),)
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    title: Center(child: Text('How to use my card?',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.white),)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0xff292929),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Center(child: Text('Order?',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.white),)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0xff292929),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Center(child: Text('Transactions',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.white),)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0xff292929),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have a bankly card? ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),),
                Text('Activate',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff24D3B5)),)

              ],
            )
          ],
        ),
      ),
    );
  }
}
