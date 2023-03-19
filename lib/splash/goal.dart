import 'package:flutter/material.dart';
import 'package:new_portfolio/splash/rewards.dart';
import 'package:new_portfolio/splash/budget.dart';
import 'package:new_portfolio/login-screen.dart';

class Goal extends StatelessWidget {
  const Goal({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:50,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Budget()));
                    },
                      child: Text('<',style: TextStyle(color: Color(0xff24D3B5),fontSize: 30,fontWeight: FontWeight.w700),),
                      style: ElevatedButton.styleFrom(primary: Colors.white,shape: CircleBorder(),side: BorderSide(color: Color(0xff24D3B5),width: 1),),
                    ),
                  ),
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
                ],
              ),
              Center(
                child: Column(children: [
                  SizedBox(height: 100,),
                  Container(
                      height: MediaQuery.of(context).size.height/3.7,
                      child: TweenAnimationBuilder(
                          child: Image.asset('assets/target 1.png',scale: 1.4,),
                          tween: Tween <double>(begin: 0,end: 1),
                          duration: Duration(milliseconds: 1000),
                          builder: (BuildContext context,double _val,Widget ?child){
                          return Opacity(
                            opacity: _val,
                            child: child,
                          );
                          }
                      ),
                  ),
                  SizedBox(height: 50,),
                  Image.asset('assets/Group 2.png'),
                  Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    child: TweenAnimationBuilder(
                      tween: Tween <double>(begin: 0,end: 1),
                      duration: Duration(seconds: 1),
                      builder: (BuildContext context,double _val,Widget ?child){
                        return Opacity(
                          opacity: _val,
                          child: child,
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('Set your savings goal',style: TextStyle(color: Color(0xff005345),fontSize: 32,fontWeight: FontWeight.w700),),
                          SizedBox(height: 8,),
                          Text('This feature lets the teens to set savings goals\n   and track their progress towards achieving \n                                    them.',style: TextStyle(color: Color(0xff005345),fontSize: 16,fontWeight: FontWeight.w400),),
                          SizedBox(height: 35,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width:333,
                    height: 65,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rewards()));
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
