import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String name;
  Color color;
  Button({

    required this.name,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width*0.6,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(25),)

      ),
      child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontSize: 27),)),
    );
  }
}