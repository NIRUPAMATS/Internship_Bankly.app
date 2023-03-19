import 'package:flutter/material.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Text('haii'),
          TweenAnimationBuilder(
              child: Center(
                child: Text(
                  'helloo',
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),
                ),
              ),
              tween: Tween <double>(begin: 0,end: 1),
              duration: Duration(seconds: 2),
              builder: (BuildContext context,double _val,Widget ?child){
                return Opacity(
                    opacity: _val,
                  child: child,
                );
              }

          ),
        ],
      ),
    );
  }
}


