import 'package:flutter/material.dart';
import 'package:transport_app/BottomScreens/screen2.dart';

import '../BottomScreens/profile_screen.dart';
import '../home.dart';
import 'circular_pages.dart';

class Bottomnavs extends StatefulWidget {
  const Bottomnavs({Key? key}) : super(key: key);

  @override
  State<Bottomnavs> createState() => _BottomnavsState();
}

class _BottomnavsState extends State<Bottomnavs> {
  int currentIndexV = 0;
  bool expanded = false;
  void expand() {
    setState(() {
      expanded = !expanded;
    });
  }
  void onTapped( int newIndex) {
    setState(() {
      currentIndexV = newIndex;
    });
  }

  List screens = [
    HomeScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {

      return Scaffold(

        body: Stack(
          children: [
            screens[currentIndexV],
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  expand();
                },
                child: Center(
                  child: AnimatedContainer(
                    curve: Curves.bounceOut,
                    duration: Duration(seconds: 1),
                    width: expanded ? 119 : 500,
                    height: 80,
                    decoration: BoxDecoration(
                        color: expanded ? Colors.red : Colors.deepPurpleAccent,
                        borderRadius: expanded
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30),
                        boxShadow: [
                          expanded ? BoxShadow(
                              color: Colors.grey.shade800,
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 3)
                          ) : BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 3)
                          )
                        ]
                    ),
                    child:
                    expanded ? Icon(Icons.add) :
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTapped(0);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.home),
                                Text("Home")
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapped(1);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                Text("Profile")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }