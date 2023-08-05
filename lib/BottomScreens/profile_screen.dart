import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:transport_app/Widget/bottomsheetscreen.dart';
import 'package:transport_app/popupwindow/popupwindow.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  showCustomButtonsheet(){
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
       builder:  (context){
 return BottomSheetScreen();
    }
    );
  }


  showPoupWindow(){
    showDialog(
      context: context, 
      builder: (context){
       return PopupWindow();
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Center(
              child: Lottie.network('https://lottie.host/beebd57d-8087-4596-94ef-4df78dcca1f0/fm2wTf0N0U.json'),
            ),
            
          ),
          
    
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(  
              margin: EdgeInsets.all(25),  
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(  
                child:Text("BottomSheet", style: TextStyle(fontSize: 20.0),),  
                
                onPressed: () {
               showCustomButtonsheet();
                },  
              ),  
            ), 
             Container(  
              margin: EdgeInsets.all(25),  
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(  
                child:Text("PopUp", style: TextStyle(fontSize: 20.0),),  
                
                onPressed: () {
               showPoupWindow();
                },  
              ),  
            ), 
          ],
         ) 
        ],
      )

    );
  }
}
