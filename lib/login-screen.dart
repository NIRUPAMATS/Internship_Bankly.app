import 'package:flutter/material.dart';
import 'package:new_portfolio/otp-screen.dart';
import 'package:new_portfolio/splash/rewards.dart';
import 'dart:io';
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //const Login({Key? key}) : super(key: key);
  double _width=333;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Container(
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              SizedBox(
                width:50,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rewards()));
                },
                  child: Text('<',style: TextStyle(color: Color(0xff24D3B5),fontSize: 30,fontWeight: FontWeight.w700),),
                  style: ElevatedButton.styleFrom(primary: Colors.white,shape: CircleBorder(),side: BorderSide(color: Color(0xff24D3B5),width: 1),),
                ),
              ),
              TweenAnimationBuilder(
                  tween: Tween <double>(begin: 0,end: 1),
                  duration: Duration(seconds: 2),
                  builder: (BuildContext context,double _val,Widget ?child){
                    return Opacity(
                      opacity: _val,
                      child: child,
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                      Center(child: Image.asset('assets/bankly-logo1.png')),
                      SizedBox(height: 70,),
                      Text('Enter your phone number',style: TextStyle(color:Color(0xff636F8C),fontSize: 24,fontWeight: FontWeight.w700),),
                      Image.asset('assets/textt.png'),
                      SizedBox(height: 13,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: '+91 00000 00000',
                          hintStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xff909EC0).withOpacity(0.3)),
                          filled: true,
                          fillColor: Color(0xff909EC0).withOpacity(0.1),
                          border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 13,),
                      Image.asset('assets/text.png',scale: 1.1,),
                      SizedBox(height: 185,),
                    ],
                  ),
              ),
              Container(
                width: _width,
                height: 65,
                child: ElevatedButton(onPressed: ()=>setState((){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Otp()));
                }
                ),
                  child: Text('Get OTP',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
                  style: ElevatedButton.styleFrom(primary: Colors.white,backgroundColor:  Color(0xff24D3B5),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                ),
              )
            ],
          ),
        )
    );
  }
}


