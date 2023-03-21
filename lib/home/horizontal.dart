import 'package:flutter/material.dart';
class Horizontal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Container(
             height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 147,
                  width: 123,
                  decoration: BoxDecoration(color: Color(0xff1E1E1E),borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('20% OFF',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white),),
                      SizedBox(height: 50,),
                      Image.asset('assets/google-play 1.png',scale: 1.12,),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Stack(
                  children: [
                Container(
                  height: 247,
                  width: 123,
                  decoration: BoxDecoration(color: Color(0xff1E1E1E),borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Text('5% OFF',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white),),
                      Text('On bankly card',style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w400),),
                      SizedBox(height: 35,),
                    ],
                  ),
                ),
                  Positioned(
                    bottom: 0,
                    child: Image.asset('assets/debit-card(hidden) 1.png',scale: 1,),
                  ),
                    Positioned(
                      bottom: 2,
                      child: Image.asset('assets/debit-card(hidden) 2.png',scale: 1,),
                    ),
                    Positioned(
                      bottom:10,
                      right: 0,
                      child: Image.asset('assets/debit-card(hidden) 3.png',scale: 1,),
                    ),
              ],),
                SizedBox(width: 15,),
                Container(
                  height: 147,
                  width: 123,
                  decoration: BoxDecoration(color: Color(0xff1E1E1E),borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('10% OFF',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.white),),
                      Text('On foods',style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w400),),
                      SizedBox(height: 40
                        ,),
                      Image.asset('assets/diet 1.png',scale: 1.12,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
