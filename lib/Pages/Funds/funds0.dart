import 'package:app/FireBase/service/authentication.dart';
import 'package:app/FireBase/service/database_service.dart';
import 'package:app/Pages/Funds/aftersubmit.dart';
import 'package:app/Pages/Funds/funds.dart';
import 'package:app/Pages/Funds/funds2.dart';
import 'package:app/SharedData/helper/helper_function.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class funds0 extends StatefulWidget {
  const funds0({super.key});

  @override
  State<funds0> createState() => _funds0State();
}

class _funds0State extends State<funds0> {
  
  AuthService authService = AuthService();
  final String user = FirebaseAuth.instance.currentUser!.uid;

  var submission = true;
  bool status = true;

  @override
  void initState() {
    super.initState();
    getstatus();
    print(  submission);

  }

  getstatus(){

    DatabaseService().getFundStatus(user).then((val) {
      setState(() {
        submission = val;
      });
    });
   
  }


  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: submission ? const aftersubmit() : const fundspage(),
    );
  }
}
