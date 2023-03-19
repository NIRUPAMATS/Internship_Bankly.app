import 'package:flutter/material.dart';
import 'package:new_portfolio/splash/budget.dart';
import 'package:new_portfolio/login-screen.dart';
import 'package:new_portfolio/splash/goal.dart';
class Budget extends StatelessWidget {
  const Budget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 50,),
              SizedBox(
                width:73,
                height: 33,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                },
                  child: Text('Skip',style: TextStyle(color: Color(0xff24D3B5),fontSize: 12,fontWeight: FontWeight.w400),),
                  style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),side: BorderSide(color: Color(0xff24D3B5),width: 1),),
                ),
              ),
              SizedBox(height: 17,),
              Center(
                child: Column(children: [
                  SizedBox(height: 100,),
                  Container(
                    height: MediaQuery.of(context).size.height/3.7,
                    child: Image.asset('assets/2065283 1.png',scale: 1.4,),
                  ),
                  SizedBox(height: 50,),
                  Image.asset('assets/Group 1.png'),
                  Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('Track your budget',style: TextStyle(color: Color(0xff005345),fontSize: 32,fontWeight: FontWeight.w700),),
                        SizedBox(height: 8,),
                        Text('The budget feature allows teens to track their\nspending, set savings goals, and receive\n      educational resources to help them\n  understand important financial concepts.',style: TextStyle(color: Color(0xff005345),fontSize: 16,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:333,
                    height: 65,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Goal()));
                    },
                      child: Text('Next >',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
                      style: ElevatedButton.styleFrom(primary: Colors.white,backgroundColor:  Color(0xff24D3B5),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                    ),
                  ),
                ],),
              )
            ],
          ),
        )
    );
  }
}
