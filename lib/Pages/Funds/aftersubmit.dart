import 'package:app/Pages/HomePage/welcome3.dart';
import 'package:app/SharedData/button.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class aftersubmit extends StatefulWidget {
  const aftersubmit({super.key});

  @override
  State<aftersubmit> createState() => _aftersubmitState();
}

class _aftersubmitState extends State<aftersubmit> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),

      body : Container(
        decoration : 
        BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
         Color.fromARGB(255, 72, 60, 229),
              Color.fromARGB(255, 33, 20, 128),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Lottie.asset("assets/images/ok.json"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  "Your application has been submitted",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kanit(
                    color: Color.fromARGB(255, 253, 249, 249),
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  "We will get back to you soon",
                  style: GoogleFonts.kanit(
                    color: Color.fromARGB(255, 253, 249, 249),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: profilepagehomebutton,
                  onPressed: () {
                     nextScreenReplace(context, const Welcome3());
                  },
                  child:  Text(" OK " , style : GoogleFonts.kanit(color: Color.fromARGB(255, 253, 249, 249), fontSize: 20,)),
                )
              ],
            ),
          ),
        ),
      ),
      );
    
  }
}