
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_portfolio/splash/budget.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  bool animate=false;
  @override
  void initState(){
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(

          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: animate?0:-200,
               right:animate?0:-200,
                child: Image.asset('assets/Ellipse 1.png',scale: 1.2)
            ),
            Positioned(
                top: 378,
                left: 85,
                child: Image.asset('assets/bankly-logo1.png',scale: 0.9,)
            ),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: animate?0:-200,
                left:animate?0:-200,
                child: Image.asset('assets/Ellipse 1 (1).png',scale: 1.2)
            ),
          ],
        ),
      ),
    );
  }


  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() =>animate=true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Budget()));

  }
}