import 'package:flutter/material.dart';
import 'package:new_portfolio/home/screen.dart';
import 'package:new_portfolio/login-screen.dart';
class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
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
                    Text('Enter the otp to verify your phone\nNumber',style: TextStyle(color:Color(0xff636F8C),fontSize: 22,fontWeight: FontWeight.w700),),
                    Image.asset('assets/text2.png',scale: 1.1,),
                    SizedBox(height: 13,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 75,
                          width: 75,
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xff909EC0).withOpacity(0.1),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 75,
                          width: 75,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff909EC0).withOpacity(0.1),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 75,
                          width: 75,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff909EC0).withOpacity(0.1),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 75,
                          width: 75,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff909EC0).withOpacity(0.1),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none),
                            ),
                          ),
                        ),

                      ],
                    ),
                   SizedBox(height: 185,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/text3.png',scale: 1.2,),
                  Container(
                    width:66,
                    height: 56,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen()));
                    },
                      child: Text('>',style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
                      style: ElevatedButton.styleFrom(primary: Colors.white,backgroundColor:Color(0xff24D3B5),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
