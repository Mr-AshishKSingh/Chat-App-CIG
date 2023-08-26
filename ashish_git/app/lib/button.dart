import 'package:flutter/material.dart';
import 'welcome.dart';


final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size( 327 , 40),
  backgroundColor: Color.fromARGB(255, 61, 35, 207),
  elevation : 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular( 10 ),
  ),

);



final ButtonStyle button2Primary = ElevatedButton.styleFrom(
  minimumSize: Size( 315 , 40),
  backgroundColor: Color.fromARGB(255, 61, 35, 207),
  elevation : 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular( 100 ),
  ),

);

final ButtonStyle gobackbutton = ElevatedButton.styleFrom(
  minimumSize: Size( 315 , 40),
  backgroundColor: Color.fromARGB(255, 50, 60, 254),
  elevation : 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular( 100 ),
  ),

);