import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:transport_app/SignIn/business.dart';
import 'package:transport_app/SignIn/personal.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Personal",style: TextStyle(fontSize: 40),),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Personal())
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
              child: Container(
                height: 150,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20),)

                ),
                child: Image.asset("assets/images/undraw_Profile_pic_re_iwgo.png"),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Business()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
              child: Container(
                height: 150,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset("assets/images/undraw_Business_chat_re_gg4h.png"),

              ),
            ),
          ),
          Text("Business",style: TextStyle(fontSize: 40),),
        ],
      ),
    );
  }
}