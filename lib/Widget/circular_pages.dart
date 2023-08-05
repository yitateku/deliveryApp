import 'package:flutter/material.dart';


class CircularAvator extends StatelessWidget {
  final String imageName;
  String textName;
  String textName1;
  String textName2;


  CircularAvator({

    required this.imageName,
    required this.textName,
    required this.textName1,
    required this.textName2,


  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundImage: Image.asset("assets/images/$imageName").image,
                    backgroundColor: Color(0xFF6C63FF),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(textName,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      Text(textName1,style: TextStyle(fontSize: 12,),
                        maxLines: 3,overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                      Text(textName2,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),


                    ],
                  )
                ],
              )
    );
  }
}

