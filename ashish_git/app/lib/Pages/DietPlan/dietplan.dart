import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:app/Pages/DietPlan/age.dart';

class dietpage extends StatefulWidget {
  const dietpage({Key? key}) : super(key: key);

  @override
  State<dietpage> createState() => dietpageState();
}

class dietpageState extends State<dietpage> {
  int isMale = 0;

  @override
  Widget build(BuildContext context) {
    var charBorderSelected = BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: Color.fromARGB(255, 252, 0, 218),
        width: 3,
      ),
    );

    var charBorderDeSelected = BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: Color.fromARGB(255, 153, 156, 159),
        width: 2,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Diet Plan"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
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
        child: Container(
          color: const Color.fromARGB(0, 227, 242, 253),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [


              SizedBox(

                height: 40,
              ),

              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(85, 6, 250, 209),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Color.fromARGB(0, 153, 156, 159),
                    width: 2,
                  ),
                ),
                
                height: 40,
                width: 350,
                
                
                child: Text(
                  "Please Select Your Gender",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.concertOne(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 100,
                height: 2,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isMale = 1;
                            });
                          },
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: isMale == 1
                                    ? Colors.pink // Background color for Men when selected
                                    : Color.fromARGB(255, 153, 156, 159), // Border color when not selected
                                width: isMale == 1 ? 3 : 2,
                              ),
                              color: isMale == 1
                                  ? Colors.pink // Background color for Men when selected
                                  : Colors.transparent, // Transparent background when not selected
                            ),
                            child: Lottie.asset(
                              "assets/images/malephoto.json",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Men ",
                          style: GoogleFonts.elMessiri(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isMale = 2;
                            });
                          },
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: isMale == 2
                                    ? Colors.pink // Background color for Women when selected
                                    : Color.fromARGB(255, 153, 156, 159), // Border color when not selected
                                width: isMale == 2 ? 3 : 2,
                              ),
                              color: isMale == 2
                                  ? Colors.pink // Background color for Women when selected
                                  : Colors.transparent, // Transparent background when not selected
                            ),
                            child: Lottie.asset(
                              "assets/images/animation3.json",
                              width: 300,
                              height: 300,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Women",
                          style: GoogleFonts.elMessiri(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  "PRESS THE BUTTON BELOW AFTER SELECTION?",
                  textAlign: TextAlign.center ,
                  style: GoogleFonts.oswald(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,

                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    //print("Submit Gender Selected ");
                    if (isMale == 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => age()));
                    } else if (isMale == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => age()));
                    }
                  },
                  child: Text(
                    'Submit',
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.blue.shade400,
                    backgroundColor: Colors.blue.shade50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
