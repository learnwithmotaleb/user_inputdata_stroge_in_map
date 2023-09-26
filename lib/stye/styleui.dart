import 'package:flutter/material.dart';


//===============inputStyle====================

InputDecoration AppInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(

    ),
    labelText: label,


  );
}

//=====================TextStyle==================

TextStyle headingTextStyle(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,

  );
}

//===================AppButtonStyle=============

ButtonStyle appButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    padding: EdgeInsets.all(22),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    )

  );
}

