import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height*0.8,
      width: MediaQuery.of(context).size.width*0.7,
      decoration: BoxDecoration(

          border: Border.all(
            color: Colors.black,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50)
          )

      ),

    child: ListView(

      children: <Widget>[
        UserAccountsDrawerHeader(
decoration: BoxDecoration(
  color: Colors.white,
),
          accountName: Text("Yitateku aderaw",style: TextStyle(color: Colors.black),),
          accountEmail: Text("yituadera@gmail.com",style: TextStyle(color: Colors.black),),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text(
              "A",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home), title: Text("Home"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings), title: Text("Settings"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.contacts), title: Text("Contact Us"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
    );
  }
}