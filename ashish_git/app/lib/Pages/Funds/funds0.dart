

import 'package:app/FireBase/service/authentication.dart';
import 'package:app/Pages/Funds/aftersubmit.dart';
import 'package:app/Pages/Funds/funds.dart';
import 'package:app/Pages/Funds/funds2.dart';
import 'package:app/SharedData/helper/helper_function.dart';
import 'package:flutter/material.dart';

class funds0 extends StatefulWidget {
  const funds0({super.key});

  @override
  State<funds0> createState() => _funds0State();
}

class _funds0State extends State<funds0> {
  AuthService authService = AuthService();

  bool applied = false;
  

  @override
  void initState() {
    super.initState();
    getsubmissionstatus();
  }


   getsubmissionstatus() async {
    await HelperFunctions.getsubmissionstatus().then((value) {
      if (value != null) {
        setState(() {
          applied = value;
        });
      }
    });
  }

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  applied  ? const aftersubmit() : const fundspage(),
    );
  }
}