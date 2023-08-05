import 'package:flutter/material.dart';
import 'package:transport_app/Widget/bottm_nav.dart';
import 'package:transport_app/Widget/button.dart';
import 'package:transport_app/home.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
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

          Image.asset("assets/images/undraw_Profile_pic_re_iwgo.png"),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Bottomnavs())
                );
              },
              child: Button(color: Colors.red,name: "Next",)),

        ],
      ),
    );
  }
}