import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 90),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
           color: Colors.white,
        ),
        height: 500,
      ),
    );
  }
}