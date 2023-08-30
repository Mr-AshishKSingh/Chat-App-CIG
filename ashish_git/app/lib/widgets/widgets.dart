import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  
  fillColor: Color.fromARGB(66, 140, 140, 213),
 
  filled: true,

  
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(0, 0, 81, 255), width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(0, 15, 13, 13), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 255, 249, 248), width: 2),
  ),
);








void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}


void nextScreenReplace(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}









void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}