import 'package:app/FireBase/service/authentication.dart';
import 'package:app/FireBase/service/database_service.dart';
import 'package:app/SharedData/button.dart';
import 'package:app/SharedData/helper/helper_function.dart';
import 'package:app/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Funds2 extends StatefulWidget {
  const Funds2({Key? key}) : super(key: key);

  @override
  State<Funds2> createState() => _Funds2State();
}

class _Funds2State extends State<Funds2> {
  final formKey = GlobalKey<FormState>();
  AuthService authService = AuthService();
  Stream? funds;
  String village = "";
  String district = "";
  String state = "";
  String pincode = "";
  String address = "";
   String userName = "";
  String email = "";
  String  submission =  "false";
  String mobile = "";

  

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Funds"),
          backgroundColor: Color.fromARGB(255, 10, 2, 248),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              


              Lottie.asset('assets/images/fund.json', width: 200),
              Text(
                "Please enter the Details",
                style: GoogleFonts.oswald(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),

              Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Village Name',
                                prefixIcon: Icon(Icons.location_city,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password must be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (val) {
                              setState(() {
                                village = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            
                            decoration: textInputDecoration.copyWith(
                                hintText: 'District Name',
                                prefixIcon: Icon(Icons.location_city_outlined,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password must be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (val) {
                              setState(() {
                                district = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            
                            decoration: textInputDecoration.copyWith(
                                hintText: 'State Name',
                                prefixIcon: Icon(Icons.location_city_rounded,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password must be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (val) {
                              setState(() {
                                state = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),



                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Pincode ',
                                prefixIcon: Icon(Icons.code,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password must be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (val) {
                              setState(() {
                                pincode = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Complete Address',
                                prefixIcon: Icon(Icons.lock_clock,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password must be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (val) {
                              setState(() {
                                address = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),


                       Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Mobile Number',
                                prefixIcon: Icon(Icons.mobile_friendly_sharp,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password must be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (val) {
                              setState(() {
                                mobile = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),
             
              
           
              SizedBox(height: 50),
              ElevatedButton(
                style: fundraise,
                  onPressed: () async {
                     await HelperFunctions.saveUserLoggedInStatus(true);

                    setState(() {
                      submission = "true";
                    });
                     DatabaseService(
                              uid: FirebaseAuth.instance.currentUser!.uid)
                          .updatefunddetails(userName,
                              FirebaseAuth.instance.currentUser!.uid, village , district, state, pincode, address , submission , mobile)
                        ;
                  },
                                   
                  child:  Text("RAISE IT" , style: 
        GoogleFonts.oswald(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )
                  ,),
                )
            ],
          ),
        ),
      ),
    );
  }
}

