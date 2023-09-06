import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class age extends StatefulWidget {
  const age({Key? key}) : super(key: key);

  @override
  State<age> createState() => ageState();
}

class ageState extends State<age> {
  int isSelect = 0;

  @override
  Widget build(BuildContext context) {
    var charBorderSelected = BoxDecoration(
      color: Color.fromARGB(157, 15, 231, 123),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: const Color.fromARGB(255, 51, 243, 33),
        width: 3,
      ),
    );

    var charBorderDeSelected = BoxDecoration(
      // color: Color.fromARGB(255, 83, 73, 228),
      color: Color.fromARGB(255, 213, 213, 235),

      borderRadius: BorderRadius.circular(20),


      border: Border.all(
        color: Color.fromARGB(0, 153, 156, 159),
        width: 2,
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 74, 245, 7),
        onPressed: () {

          print("Submit age Selected ");
                      if (isSelect == 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => age()));
                      } else if (isSelect == 2) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => age()));
                      } else if (isSelect == 3) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => age()));
                      } else if (isSelect == 4) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => age()));
                      } else if (isSelect == 5) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => age()));
                      }



        },
        icon: const Icon(Icons.next_plan),
        label:  Text('Continue' , 
        style: GoogleFonts.oswald(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 255, 255, 255),
        ),




      ),
      
      
      
      
      ),





      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("DietPlan"),
        //center

        centerTitle: true   ,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 72, 60, 229),
                  Color.fromARGB(255, 33, 20, 128),
                ],
              ),
            ),
            child: Column(children: [
              

              
              Container(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Text(
                    "SELECT YOUR AGE",
                    style: GoogleFonts.concertOne(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = 1;
                    });
                  },
                  child: Container(
                      width: 300,
                      height: 250,
                      decoration: isSelect == 0
                          ? charBorderDeSelected
                          : isSelect == 1
                              ? charBorderSelected
                              : charBorderDeSelected,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                        
                              Lottie.asset('assets/images/newborn.json',height: 150,width: 150),
                              Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 3, 3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "New born",
                                    style:GoogleFonts.oswald(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 252, 246, 246),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))),
              SizedBox(
                height: 40,
              ),




               InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = 2;
                    });
                  },
                  child: Container(
                      width: 300,
                      height: 250,
                      decoration: isSelect == 0
                          ? charBorderDeSelected
                          : isSelect == 2
                              ? charBorderSelected
                              : charBorderDeSelected,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                        
                              Lottie.asset('assets/images/child.json',height: 150,width: 150),
                              Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 3, 3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "1 - 12 Years",
                                    textAlign: TextAlign.center,
                                    style:GoogleFonts.oswald
                                    (
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 252, 246, 246),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))),

              SizedBox( height: 40, ),
              // InkWell(
              //     onTap: () {
              //       setState(() {
              //         isSelect = 2;
              //       });
              //     },
              //     child: Container(
              //         width: 300,
              //         height: 50,
              //         decoration: isSelect == 0
              //             ? charBorderDeSelected
              //             : isSelect == 2
              //                 ? charBorderSelected
              //                 : charBorderDeSelected,
              //         child: Center(
              //           child: Text(
              //             "1-12",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //               fontSize: 20,
              //               fontWeight: FontWeight.w400,
              //               color: Colors.black,
              //             ),
              //           ),
              //         ))),
             





               InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = 3;
                    });
                  },
                  child: Container(
                      width: 300,
                      height: 250,
                      decoration: isSelect == 0
                          ? charBorderDeSelected
                          : isSelect == 3
                              ? charBorderSelected
                              : charBorderDeSelected,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                        
                              Lottie.asset('assets/images/boy.json',height: 150,width: 150),
                              Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 3, 3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "13- 24 Years",
                                    textAlign: TextAlign.center,
                                    style:GoogleFonts.oswald
                                    (
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 252, 246, 246),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))),





//---------------------

SizedBox( height: 40, ),

InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = 4;
                    });
                  },
                  child: Container(
                      width: 300,
                      height: 250,
                      decoration: isSelect == 0
                          ? charBorderDeSelected
                          : isSelect == 4
                              ? charBorderSelected
                              : charBorderDeSelected,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                        
                              Lottie.asset('assets/images/JOB.json',height: 150,width: 150),
                              Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 3, 3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "25 - 50 Years",
                                    textAlign: TextAlign.center,
                                    style:GoogleFonts.oswald
                                    (
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 252, 246, 246),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))),
              
             
              SizedBox(
                height: 40,
              ),

              InkWell(
                  onTap: () {
                    setState(() {
                      isSelect = 5;
                    });
                  },
                  child: Container(
                      width: 300,
                      height: 250,
                      decoration: isSelect == 0
                          ? charBorderDeSelected
                          : isSelect == 5
                              ? charBorderSelected
                              : charBorderDeSelected,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                        
                              Lottie.asset('assets/images/old.json',height: 150,width: 150),
                              Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 3, 3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "50+ Years",
                                    textAlign: TextAlign.center,
                                    style:GoogleFonts.oswald
                                    (
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 252, 246, 246),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))),
              
              SizedBox(
                height: 40,
              ),
              
            ]),
          ),
        ),
      ),
    );
  }
}
