import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class aboutus extends StatefulWidget {
  const aboutus({super.key});

  @override
  State<aboutus> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 0, 4, 253), Color.fromARGB(171, 221, 111, 248)])),




      child:   Scaffold(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        body: 
        Center(
          child: Column(
            children: [


              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "About Us",
                  style: GoogleFonts.dmSerifText(
                    textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 250, 250),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: SingleChildScrollView(
                 
                  child: Container(
                    margin: EdgeInsets.only(top: 10),

                    
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(166, 17, 223, 144),
                    ),
                   
                    child: SingleChildScrollView(
                      child: Column(
                        children: [



                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(166, 17, 223, 144),
                            ),
                            margin: EdgeInsets.only(top: 10),
                            child: Center(
                              child: Text(
                                "ashish",
                                style: GoogleFonts.sen(
                                  textStyle: TextStyle(
                                    color: const Color.fromARGB(255, 255, 250, 250),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "ashishssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
                            style: GoogleFonts.sen(
                              textStyle: TextStyle(
                                color: const Color.fromARGB(255, 255, 250, 250),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              

              
            ])
        )
      ),
    );
  }
}