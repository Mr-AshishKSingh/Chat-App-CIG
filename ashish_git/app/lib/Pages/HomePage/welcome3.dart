import 'package:app/Pages/AboutUs/about.dart';
import 'package:app/Pages/DietPlan/dietplan.dart';
import 'package:app/Pages/FIndHospitals/findhospital.dart';
import 'package:app/Pages/Funds/funds.dart';
import 'package:app/Pages/Funds/funds0.dart';
import 'package:app/Pages/Login/LoginPage.dart';
import 'package:app/Pages/ChatGroups/chatgroups.dart';
import 'package:app/Pages/FindDoctor/findyourdoctorpage.dart';
import 'package:app/Pages/Profile/profilepage.dart';
import 'package:app/SharedData/button.dart';
import 'package:app/SharedData/helper/helper_function.dart';
import 'package:app/FireBase/service/authentication.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:app/Pages/FindMedicine/searchmeds.dart';

class Welcome3 extends StatefulWidget {
  const Welcome3({super.key});

  @override
  State<Welcome3> createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  AuthService authService = AuthService();

  String userName = "";
  String email = "";

  @override
  void initState() {
    super.initState();
    gettinUserData();
  }

  gettinUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((value) {
      setState(() {
        userName = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 210, 212, 221)
          ])),
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            // actions: [
            //   Lottie.asset(
            //     "assets/images/namaste.json",
            //     width: 100,
            //     height: 300,
            //   ),
            // ],
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 252, 252, 252),
            title: Text(
              " Welcome  $userName",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15),
              ),
            ),
          ),
          drawer: Drawer(
            backgroundColor: Color.fromARGB(182, 167, 4, 173),
            //add transparency

            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(28, 60, 4, 227),
                    Color.fromARGB(
                        13, 244, 244, 246), // Change gradient colors as needed
                  ],
                ),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Lottie.asset(
                    "assets/images/profilephotonew.json",
                    width: 100,
                    height: 300,
                  ),
                  Center(
                    child: Text(
                      userName,
                      style: GoogleFonts.didactGothic(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      email,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      style: drawerprofile,
                      child: Text('Profile'),
                      onPressed: () {
                        nextScreenReplace(context, const ProfilePage());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      style: drawerprofile,
                      child: Text('Groups'),
                      onPressed: () {
                        nextScreenReplace(context, const chatpage());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      style: drawerprofile,
                      child: Text('Contact Us'),
                      onPressed: () {
                        nextScreenReplace(context, const chatpage());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      style: drawerprofile,
                      child: Text('About '),
                      onPressed: () {
                        nextScreenReplace(context, const aboutus());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                    ),
                    child: ElevatedButton(
                      style: drawerlogout,
                      child: Text('Logout'),
                      onPressed: () {
                        authService.signOut().whenComplete(() {
                          nextScreenReplace(context, const LoginPage());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          //---------------

          backgroundColor: Color.fromARGB(90, 104, 97, 168),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 237, 236, 244),
                  Color.fromARGB(
                      255, 255, 255, 255), // Change gradient colors as needed
                ],
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: ListView(children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(107, 24, 24, 0),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(2, 255, 204, 1)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    padding: EdgeInsets.all(3),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text(
                                            "Welcome to Healthify , ConnectHub is your new go-to application for hassle-free group communication, crafted with simplicity in mind. Powered by Flutter, our lightweight and intuitive app is designed to streamline your group conversations, with plans to introduce one-to-one chatting soon.",
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              // Center(
                                              //   child: Container(
                                              //     width: 170,
                                              //     height: 270,
                                              //     //radius

                                              //     decoration: BoxDecoration(
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //               45),
                                              //       gradient: LinearGradient(
                                              //         begin:
                                              //             Alignment.topCenter,
                                              //         end: Alignment
                                              //             .bottomCenter,
                                              //         colors: [
                                              //           Color.fromARGB(
                                              //               255, 255, 123, 0),
                                              //           Color.fromARGB(
                                              //               255,
                                              //               249,
                                              //               90,
                                              //               90), // Change gradient colors as needed
                                              //         ],
                                              //       ),
                                              //     ),
                                              //     child: Column(
                                              //       children: [
                                              //         Padding(
                                              //           padding:
                                              //               const EdgeInsets
                                              //                   .all(8.0),
                                              //           child: Container(
                                              //             height: 50,
                                              //             width: 130,
                                              //             decoration:
                                              //                 BoxDecoration(
                                              //               color:
                                              //                   Color.fromRGBO(
                                              //                       6,
                                              //                       1,
                                              //                       1,
                                              //                       0.722),
                                              //               border: Border.all(
                                              //                 color: Color
                                              //                     .fromARGB(
                                              //                         2,
                                              //                         255,
                                              //                         204,
                                              //                         1),
                                              //               ),
                                              //               borderRadius:
                                              //                   BorderRadius
                                              //                       .circular(
                                              //                           45),
                                              //             ),
                                              //             child: Center(
                                              //               child: Text(
                                              //                 "Search Medicine",
                                              //                 textAlign:
                                              //                     TextAlign
                                              //                         .center,
                                              //                 style: TextStyle(
                                              //                   fontWeight:
                                              //                       FontWeight
                                              //                           .bold,
                                              //                   fontSize: 15,
                                              //                   color: Color
                                              //                       .fromARGB(
                                              //                           255,
                                              //                           254,
                                              //                           253,
                                              //                           253),
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ),
                                              //         ),
                                              //         const SizedBox(
                                              //           height: 15,
                                              //         ),
                                              //         Lottie.asset(
                                              //           "assets/images/medicine.json",
                                              //           width: 100,
                                              //           height: 100,
                                              //         ),
                                              //         const SizedBox(
                                              //           height: 15,
                                              //         ),
                                              //         ElevatedButton(
                                              //           style:
                                              //               ClickHere_SearchMedicine,
                                              //           child: Text(
                                              //             'Click Here ',
                                              //             style: TextStyle(
                                              //               fontWeight:
                                              //                   FontWeight.bold,
                                              //               fontSize: 15,
                                              //               color:
                                              //                   Color.fromARGB(
                                              //                       255,
                                              //                       254,
                                              //                       253,
                                              //                       253),
                                              //             ),
                                              //           ),
                                              //           onPressed: () {
                                              //             Navigator.push(
                                              //               context,
                                              //               MaterialPageRoute(
                                              //                 builder: (context) =>
                                              //                     searchmeds(),
                                              //               ),
                                              //             );
                                              //           },
                                              //         ),
                                              //       ],
                                              //     ),
                                              //   ),
                                              // ),
                                              SizedBox(width: 10),
                                              // Center(
                                              //   child: Container(
                                              //     width: 170,
                                              //     height: 270,
                                              //     decoration: BoxDecoration(
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //               45),
                                              //       gradient: LinearGradient(
                                              //         begin:
                                              //             Alignment.topCenter,
                                              //         end: Alignment
                                              //             .bottomCenter,
                                              //         colors: [
                                              //           Color.fromARGB(
                                              //               255, 247, 11, 11),
                                              //           Color.fromARGB(
                                              //               255,
                                              //               128,
                                              //               20,
                                              //               20), // Change gradient colors as needed
                                              //         ],
                                              //       ),
                                              //     ),
                                              //     child: Column(
                                              //       children: [
                                              //         Padding(
                                              //           padding:
                                              //               const EdgeInsets
                                              //                   .all(8.0),
                                              //           child: Container(
                                              //             height: 50,
                                              //             width: 130,
                                              //             decoration:
                                              //                 BoxDecoration(
                                              //               color:
                                              //                   Color.fromRGBO(
                                              //                       6,
                                              //                       1,
                                              //                       1,
                                              //                       0.722),
                                              //               border: Border.all(
                                              //                 color: Color
                                              //                     .fromARGB(
                                              //                         2,
                                              //                         255,
                                              //                         204,
                                              //                         1),
                                              //               ),
                                              //               borderRadius:
                                              //                   BorderRadius
                                              //                       .circular(
                                              //                           45),
                                              //             ),
                                              //             child: Center(
                                              //               child: Text(
                                              //                 "Find Doctor",
                                              //                 textAlign:
                                              //                     TextAlign
                                              //                         .center,
                                              //                 style: TextStyle(
                                              //                   fontWeight:
                                              //                       FontWeight
                                              //                           .bold,
                                              //                   fontSize: 15,
                                              //                   color: Color
                                              //                       .fromARGB(
                                              //                           255,
                                              //                           254,
                                              //                           253,
                                              //                           253),
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ),
                                              //         ),
                                              //         const SizedBox(
                                              //           height: 15,
                                              //         ),
                                              //         Lottie.asset(
                                              //           "assets/images/findyourdoctor.json",
                                              //           width: 150,
                                              //           height: 100,
                                              //         ),
                                              //         const SizedBox(
                                              //           height: 15,
                                              //         ),
                                              //         ElevatedButton(
                                              //           style:
                                              //               ClickHere_FindDoctor,
                                              //           child: Text(
                                              //             'Click Here ',
                                              //             style: TextStyle(
                                              //               fontWeight:
                                              //                   FontWeight.bold,
                                              //               fontSize: 15,
                                              //               color:
                                              //                   Color.fromARGB(
                                              //                       255,
                                              //                       254,
                                              //                       253,
                                              //                       253),
                                              //             ),
                                              //           ),
                                              //           onPressed: () {
                                              //             Navigator.push(
                                              //               context,
                                              //               MaterialPageRoute(
                                              //                 builder: (context) =>
                                              //                     FindDoctor(),
                                              //               ),
                                              //             );
                                              //           },
                                              //         ),
                                              //       ],
                                              //     ),
                                              //   ),
                                              // ),
                                              SizedBox(width: 10),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              // Center(
                                              //   child: Container(
                                              //       width: 170,
                                              //       height: 270,
                                              //       decoration: BoxDecoration(
                                              //         borderRadius:
                                              //             BorderRadius.circular(
                                              //                 45),
                                              //         gradient: LinearGradient(
                                              //           begin:
                                              //               Alignment.topCenter,
                                              //           end: Alignment
                                              //               .bottomCenter,
                                              //           colors: [
                                              //             Color.fromARGB(
                                              //                 255, 0, 238, 255),
                                              //             Color.fromARGB(
                                              //                 171,
                                              //                 60,
                                              //                 197,
                                              //                 221), // Change gradient colors as needed
                                              //           ],
                                              //         ),
                                              //       ),
                                              //       child: Column(
                                              //         children: [
                                              //           Padding(
                                              //             padding:
                                              //                 const EdgeInsets
                                              //                     .all(8.0),
                                              //             child: Container(
                                              //               height: 50,
                                              //               width: 130,
                                              //               decoration:
                                              //                   BoxDecoration(
                                              //                 color: Color
                                              //                     .fromRGBO(
                                              //                         6,
                                              //                         1,
                                              //                         1,
                                              //                         0.722),
                                              //                 border:
                                              //                     Border.all(
                                              //                   color: Color
                                              //                       .fromARGB(
                                              //                           2,
                                              //                           255,
                                              //                           204,
                                              //                           1),
                                              //                 ),
                                              //                 borderRadius:
                                              //                     BorderRadius
                                              //                         .circular(
                                              //                             45),
                                              //               ),
                                              //               child: Center(
                                              //                 child: Text(
                                              //                   "Find Hospital",
                                              //                   textAlign:
                                              //                       TextAlign
                                              //                           .center,
                                              //                   style:
                                              //                       TextStyle(
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .bold,
                                              //                     fontSize: 15,
                                              //                     color: Color
                                              //                         .fromARGB(
                                              //                             255,
                                              //                             254,
                                              //                             253,
                                              //                             253),
                                              //                   ),
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ),
                                              //           Lottie.asset(
                                              //             "assets/images/findhospital.json",
                                              //             width: 120,
                                              //             height: 130,
                                              //           ),
                                              //           ElevatedButton(
                                              //             style:
                                              //                 ClickHere_FindHospital,
                                              //             child: Text(
                                              //                 'Click Here '),
                                              //             onPressed: () {
                                              //               Navigator.push(
                                              //                 context,
                                              //                 MaterialPageRoute(
                                              //                     builder:
                                              //                         (context) =>
                                              //                             findhospitalpage()),
                                              //               );
                                              //             },
                                              //           ),
                                              //         ],
                                              //       )),
                                              // ),
                                              // SizedBox(width: 10),
                                              // Container(
                                              //     width: 170,
                                              //     height: 270,
                                              //     decoration: BoxDecoration(
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //               45),
                                              //       gradient: LinearGradient(
                                              //         begin:
                                              //             Alignment.topCenter,
                                              //         end: Alignment
                                              //             .bottomCenter,
                                              //         colors: [
                                              //           Color.fromARGB(
                                              //               255, 255, 251, 0),
                                              //           Color.fromARGB(
                                              //               188,
                                              //               255,
                                              //               243,
                                              //               72), // Change gradient colors as needed
                                              //         ],
                                              //       ),
                                              //     ),
                                              //     child: Center(
                                              //       child: Column(
                                              //         children: [
                                              //           Padding(
                                              //             padding:
                                              //                 const EdgeInsets
                                              //                     .all(8.0),
                                              //             child: Container(
                                              //               height: 50,
                                              //               width: 130,
                                              //               decoration:
                                              //                   BoxDecoration(
                                              //                 color: Color
                                              //                     .fromRGBO(
                                              //                         6,
                                              //                         1,
                                              //                         1,
                                              //                         0.722),
                                              //                 border:
                                              //                     Border.all(
                                              //                   color: Color
                                              //                       .fromARGB(
                                              //                           2,
                                              //                           255,
                                              //                           204,
                                              //                           1),
                                              //                 ),
                                              //                 borderRadius:
                                              //                     BorderRadius
                                              //                         .circular(
                                              //                             45),
                                              //               ),
                                              //               child: Center(
                                              //                 child: Text(
                                              //                   "Get Funds",
                                              //                   textAlign:
                                              //                       TextAlign
                                              //                           .center,
                                              //                   style:
                                              //                       TextStyle(
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .bold,
                                              //                     fontSize: 15,
                                              //                     color: Color
                                              //                         .fromARGB(
                                              //                             255,
                                              //                             254,
                                              //                             253,
                                              //                             253),
                                              //                   ),
                                              //                 ),
                                              //               ),
                                              //             ),
                                              //           ),
                                              //           Lottie.asset(
                                              //             "assets/images/money.json",
                                              //             width: 120,
                                              //             height: 130,
                                              //           ),
                                              //           ElevatedButton(
                                              //             style:
                                              //                 ClickHere_GetFunds,
                                              //             child: Text(
                                              //                 'Click Here '),
                                              //             onPressed: () {
                                              //               Navigator.push(
                                              //                 context,
                                              //                 MaterialPageRoute(
                                              //                     builder:
                                              //                         (context) =>
                                              //                             funds0()),
                                              //               );
                                              //             },
                                              //           ),
                                              //         ],
                                              //       ),
                                              //     ))
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Center(
                                                  child: Container(
                                                      width: 300,
                                                      height: 300,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(45),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                            Color.fromARGB(255,
                                                                255, 0, 212),
                                                            Color.fromARGB(
                                                                255,
                                                                243,
                                                                64,
                                                                64), // Change gradient colors as needed
                                                          ],
                                                        ),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 25,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            // child: Container(
                                                            //   height: 50,
                                                            //   width: 200,
                                                            //   decoration:
                                                            //       BoxDecoration(
                                                            //     color: Color
                                                            //         .fromRGBO(
                                                            //             6,
                                                            //             1,
                                                            //             1,
                                                            //             0.722),
                                                            //     border:
                                                            //         Border.all(
                                                            //       color: Color
                                                            //           .fromARGB(
                                                            //               2,
                                                            //               255,
                                                            //               204,
                                                            //               1),
                                                            //     ),
                                                            //     borderRadius:
                                                            //         BorderRadius
                                                            //             .circular(
                                                            //                 45),
                                                            //   ),
                                                            //   child: Center(
                                                            //     child: Text(
                                                            //       "Chat Groups",
                                                            //       textAlign:
                                                            //           TextAlign
                                                            //               .center,
                                                            //       style:
                                                            //           TextStyle(
                                                            //         fontWeight:
                                                            //             FontWeight
                                                            //                 .bold,
                                                            //         fontSize:
                                                            //             15,
                                                            //         color: Color
                                                            //             .fromARGB(
                                                            //                 255,
                                                            //                 254,
                                                            //                 253,
                                                            //                 253),
                                                            //       ),
                                                            //     ),
                                                            //   ),
                                                            // ),

                                                            child: Text(
                                                              "Chat Groups",
                                                              style: GoogleFonts
                                                                  .quicksand(
                                                                textStyle:
                                                                    TextStyle(
                                                                        //underline the text
                                                                        decoration:
                                                                            TextDecoration
                                                                                .underline,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        fontSize:
                                                                            20),
                                                              ),
                                                            ),
                                                          ),
                                                          Lottie.asset(
                                                            "assets/images/chat.json",
                                                            width: 120,
                                                            height: 130,
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ClickHere_FindChat,
                                                            child: Text(
                                                                'Click Here '),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            chatpage()),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                                const SizedBox(width: 10),
                                                // Container(
                                                //     width: 170,
                                                //     height: 270,
                                                //     decoration: BoxDecoration(
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               45),
                                                //       gradient: LinearGradient(
                                                //         begin:
                                                //             Alignment.topCenter,
                                                //         end: Alignment
                                                //             .bottomCenter,
                                                //         colors: [
                                                //           Color.fromARGB(
                                                //               255, 136, 255, 0),
                                                //           Color.fromARGB(
                                                //               150,
                                                //               10,
                                                //               255,
                                                //               2), // Change gradient colors as needed
                                                //         ],
                                                //       ),
                                                //     ),
                                                //     child: Center(
                                                //       child: Column(
                                                //         children: [
                                                //           Padding(
                                                //             padding:
                                                //                 const EdgeInsets
                                                //                     .all(8.0),
                                                //             child: Container(
                                                //               height: 50,
                                                //               width: 130,
                                                //               decoration:
                                                //                   BoxDecoration(
                                                //                 color: Color
                                                //                     .fromRGBO(
                                                //                         6,
                                                //                         1,
                                                //                         1,
                                                //                         0.722),
                                                //                 border:
                                                //                     Border.all(
                                                //                   color: Color
                                                //                       .fromARGB(
                                                //                           2,
                                                //                           255,
                                                //                           204,
                                                //                           1),
                                                //                 ),
                                                //                 borderRadius:
                                                //                     BorderRadius
                                                //                         .circular(
                                                //                             45),
                                                //               ),
                                                //               child:
                                                //                Center(
                                                //                 child: Text(
                                                //                   "Diet Plan",
                                                //                   textAlign:
                                                //                       TextAlign
                                                //                           .center,
                                                //                   style:
                                                //                       TextStyle(
                                                //                     fontWeight:
                                                //                         FontWeight
                                                //                             .bold,
                                                //                     fontSize: 15,
                                                //                     color: Color
                                                //                         .fromARGB(
                                                //                             255,
                                                //                             254,
                                                //                             253,
                                                //                             253),
                                                //                   ),
                                                //                 ),
                                                //               ),
                                                //             ),
                                                //           ),
                                                //           Lottie.asset(
                                                //             "assets/images/diet.json",
                                                //             width: 120,
                                                //             height: 130,
                                                //           ),
                                                //           ElevatedButton(
                                                //             style:
                                                //                 ClickHere_DietPan,
                                                //             child: Text(
                                                //                 'Click Here '),
                                                //             onPressed: () {
                                                //               Navigator.push(
                                                //                 context,
                                                //                 MaterialPageRoute(
                                                //                     builder:
                                                //                         (context) =>
                                                //                             dietpage()),
                                                //               );
                                                //             },
                                                //           ),
                                                //         ],
                                                //       ),
                                                //     )
                                                //     ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    )),
                              ]),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
