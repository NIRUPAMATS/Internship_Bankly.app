import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String _num="hello";
  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text(_num),
            TextButton(onPressed:(){
              setState(() {
                flag=!flag;
                print(flag);
                if(flag==true)
                  _num="nirupama";
                else
                  _num="hello";
              });
            },
                child: Text('click'),
            ),
            SizedBox(height: 100,),
            Container(
              child:  Stack(
                alignment: Alignment(2,0),
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                  ), //Container
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.black,
                  ), //Container
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ), //Container
                ], //<Widget>[]
              ),
            )


          ],
        ),
      ),
    );
  }
}


