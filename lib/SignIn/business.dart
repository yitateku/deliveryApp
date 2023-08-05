import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:transport_app/Widget/bottm_nav.dart';
import 'package:transport_app/home.dart';

import '../Widget/button.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Hello ",style: TextStyle(fontSize: 40,),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("This is persenal page",style: TextStyle(fontSize: 40,),textAlign: TextAlign.center,),
          ),

          Image.asset("assets/images/undraw_Business_chat_re_gg4h.png"),

          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavs()));
              },
              child: Button(color: Colors.black,name: "Next",)),

        ],
      ),
    );  }
}