import 'dart:ui';

import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {

  String Msg;


  ProgressDialog({this.Msg});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.green[300],
      child: Container(
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              SizedBox(width: 6.0,),
              CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black),),
              SizedBox(width: 26.0,),
              Text(Msg,style: TextStyle(
                color: Colors.black,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
