import 'package:flutter/material.dart';
import 'package:new_portfolio/home/horizontal.dart';


class Screen extends StatelessWidget {
 const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            Container(
              child: Column(
                children: [
                  SizedBox(height: 31,),
                  Container(
                    color: Colors.black87,
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-50,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Good Afternoon\nJohn Dahmer',
                                style: TextStyle(color: Colors.white,fontSize: 20,fontFamily:'A' ,fontWeight: FontWeight.w700),),
                              Icon(Icons.notifications_rounded,
                                color: Color(0xff24D3B5),)
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          width:MediaQuery.of(context).size.width-130 ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Total Balance', style: TextStyle(color: Color(0xffD9D9D9),fontSize: 16,fontFamily:'A',fontWeight: FontWeight.w400),),
                              Text('₹234,300.32', style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 92,
                                    height: 31,
                                    child: ElevatedButton(onPressed: (){},
                                        child: Text('Pay >'),
                                        style: ElevatedButton.styleFrom(primary: Colors.grey.withOpacity(0.2)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 92,
                                    height: 31,
                                    child: ElevatedButton(onPressed: (){},
                                      child: Text('Add +'),
                                      style: ElevatedButton.styleFrom(primary: Colors.grey.withOpacity(0.2)),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: Color(0xff424242))
                            ],
                          ),
                        ),
                        Container(
                          child: Image.asset('assets/debit_per.png',scale: 0.5,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width/2.3,
                          height: 54,
                          child: ElevatedButton(onPressed: (){},
                            child: Text('Request',style: TextStyle(color: Color(0xff24D3B5),fontSize: 16,fontWeight: FontWeight.w400),),
                            style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),side: BorderSide(color: Color(0xff24D3B5),width: 1),),
                          ),
                        ),
                        SizedBox(
                          width:MediaQuery.of(context).size.width/2.3,
                          height: 54,
                          child: ElevatedButton(onPressed: (){},
                            child: Text('History',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
                            style: ElevatedButton.styleFrom(primary: Color(0xff24D3B5),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),side: BorderSide(color: Color(0xff24D3B5),width: 1),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 14,),
                        Text('Your rewards',style: TextStyle(color:Color(0xff636F8C),fontSize: 20,fontWeight: FontWeight.w700),),
                        SizedBox(height: 14,),
                        Container(
                          height: 113,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(border: Border.all(width: 1,color:Color(0xffB378FF)),borderRadius:BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 11,),
                                  Text('Entertainment',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700,),),
                                  SizedBox(height: 11,),
                                  Text('2334 points',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Color(0xff7000FF)),)
                                ],
                              ),
                              Image.asset('assets/image 2.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Explore Categories',style: TextStyle(color:Color(0xff636F8C),fontSize: 20,fontWeight: FontWeight.w700),),
                        SizedBox(height: 14,),
                        Container(
                          height: 230,
                          child: Column(
                            children: [
                              SizedBox(height:10 ,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/travel-luggage 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Food',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/travel-luggage 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Travel',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/shopping-bag 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Shopping',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/education 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Education',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height:10 ,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/mental-health 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Entertainment',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/personal-care 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Personel Care',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/transportation 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Transportation',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xfff3f0f0),
                                          radius: 36,
                                          child: CircleAvatar(backgroundImage: AssetImage('assets/magic-box 1.png'),radius:35,backgroundColor: Colors.grey.withOpacity(0) ,)),
                                      Text('Miscellaneous',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20,20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hey John, you might like this',style: TextStyle(color:Color(0xff636F8C),fontSize: 20,fontWeight: FontWeight.w700),),
                        SizedBox(height: 24,),
                        Container(
                          height: 210,
                          width: 380,
                          padding: EdgeInsets.fromLTRB(13, 13, 7, 0),
                          decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)),color: Color(0xff24D3B5),),
                          child: Column(
                            children: [
                              Text('Order your welcome kit for FREE',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 27,),
                                    Text('Welcome kits includes',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
                                    Text('   •Free bankly badge.\n   •Free bankly t-shirt.\n   •More freebies,',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 15,),
                                    TextButton(onPressed: (){},
                                        style: TextButton.styleFrom(backgroundColor: Color(0xff72E4A0)),
                                        child:Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                                          child: Text('Order now!',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                                        ),
                                    ),
                                    SizedBox(height: 23,),
                                  ],
                                ),
                                Container(
                                    height: 110,
                                    alignment: Alignment.bottomLeft,
                                    child: Image.asset('assets/open-box 1.png',)),
                              ],)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20,20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Use Bankly and get',style: TextStyle(color:Color(0xff636F8C),fontSize: 20,fontWeight: FontWeight.w700),),
                        SizedBox(height: 24,),
                        Container(
                          child: Horizontal()
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 191,
                    width: 380,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end:Alignment.bottomCenter ,
                        colors: [
                          Color(0xff72E4A0),
                          Color(0xff24D3B5),
                        ]
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 17,),
                        Text('Bring your card at home',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                        Text('only for 299/-',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700),),
                        //SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){},
                              style: TextButton.styleFrom(backgroundColor: Colors.white),
                              child:Padding(
                                padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                                child: Text('Book now!',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
                              ),
                            ),
                            Image.asset('assets/image 3.png',scale: 2.11,)
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

      ),
    );
  }
}
