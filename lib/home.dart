
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:transport_app/Widget/circular_pages.dart';
import 'package:transport_app/Widget/map.dart';

import 'Widget/drawer_pages.dart';
import 'Widget/schedule.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body:ListView(
        scrollDirection: Axis.vertical,

        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 160,
                  width: 254,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(

                          color: Colors.black.withOpacity(0.3),
                          offset:  Offset(
                            0,
                            2.0,
                          ),
                        ), //BoxShadow
                      ]
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Maps()));
                                },
                                child: Icon(Icons.share_location_outlined)),
                            Text("Pick up Location"),
                            SizedBox(width: 2,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule()));
                                },
                                child: Icon(Icons.access_time_rounded,size: 16,color: Colors.black,)),
                            Text("Schedule"),
                          ],

                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                          indent: 35,
                          endIndent: 0,
                          color: Colors.black,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Maps()));
                                  },
                                  child: Icon(Icons.location_on_rounded)),
                              Text("Drop off Location"),
                            ],
                          ),

                        ),
                        SizedBox(height: 20,),
                        Divider(
                          height: 2,
                          thickness: 1,
                          indent: 0,
                          // endIndent: 0,
                          color: Colors.black,
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add),
                              Text("Add Stoppage",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),

                ),


              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 96,
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width*0.90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: CircularAvator(
                    imageName:"bi.png",
                    textName: "Walker/Bicycle",
                    textName1:"Perfect for same district\n"
                        " small goods door to door delivery" ,
                    textName2:"up to 5KG",
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 96,
                  margin: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: CircularAvator(
                      imageName:"motor-removebg-preview.png",
                      textName: "Walker/Bicycle",
                      textName1:"Perfect for same district\n"
                          " small goods door to door\n"
                          "delivery" ,
                      textName2:"up to 5KG",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 96,
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width*0.90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: CircularAvator(
                    imageName:"car-removebg-preview.png",
                    textName: "Walker/Bicycle",
                    textName1:"Perfect for same district\n"
                        " small goods door to door delivery" ,
                    textName2:"up to 5KG",
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 96,
                  margin: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),border: Border.all(
                    color: Colors.black,
                  ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: CircularAvator(
                      imageName:"van-removebg-preview.png",
                      textName: "Walker/Bicycle",
                      textName1:"Perfect for same district\n"
                          " small goods door to door\n"
                          "delivery" ,
                      textName2:"up to 5KG",
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 65,),
        child: SpeedDial(
          icon: Icons.arrow_upward,
          activeIcon: Icons.arrow_downward,
          spacing: 10,
          animationDuration:const Duration(seconds: 2),
          spaceBetweenChildren: 10,
          animationCurve: Curves.bounceOut,
          foregroundColor: Colors.black,
          backgroundColor: Colors.lime,
          activeForegroundColor: Colors.white,
          activeBackgroundColor: Colors.blue,
          closeManually: true,
          renderOverlay: false,

          children: [
            SpeedDialChild(
                backgroundColor: Colors.deepPurpleAccent,
                child: Icon(Icons.share_rounded)
            ),
            SpeedDialChild(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.mail)
            ),
            SpeedDialChild(
                backgroundColor: Colors.yellowAccent,
                child: Icon(Icons.home)
            ),
            SpeedDialChild(
                backgroundColor: Colors.cyanAccent,
                child: Icon(Icons.notifications,)
            ),


          ],
        ),
      ),
    );
  }
}
