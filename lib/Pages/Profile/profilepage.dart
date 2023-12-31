import 'package:app/Pages/Login/LoginPage.dart';
import 'package:app/SharedData/button.dart';
import 'package:app/SharedData/helper/helper_function.dart';
import 'package:app/FireBase/service/authentication.dart';
import 'package:app/Pages/HomePage/welcome3.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = "";
  String email = "";
  AuthService authService = AuthService();

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
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          elevation: 0,
          actions: [
            // ElevatedButton(onPressed: (){}, child: Text("ashish"))
            // Image.asset('assets/images/Logo.png', height: 50, width: 50,),
          ],
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 247, 247, 247),
          title: Text(
            "Profile Page",
            style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 233, 233, 235),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 217, 217, 225),
                Color.fromARGB(
                    255, 229, 228, 235), // Change gradient colors as needed
              ],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 370,
                    width: 300,
                    decoration: BoxDecoration(
                      boxShadow: List<BoxShadow>.generate(
                        1,
                        (int index) {
                          return BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurRadius: 10.0,
                          );
                        },
                      ),
                      borderRadius: BorderRadius.circular(45),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 135, 6, 164),
                          Color.fromARGB(255, 223, 5,
                              5), // Change gradient colors as needed
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Lottie.asset(
                          "assets/images/newprofileheader.json",
                          width: 300,
                          height: 300,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 5, 1, 1),
                                Color.fromARGB(255, 0, 0,
                                    0), // Change gradient colors as needed
                              ],
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "Basic Account ",
                            style: GoogleFonts.passionOne(
                              textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      //round corners

                      borderRadius: BorderRadius.circular(45),
                      boxShadow: List<BoxShadow>.generate(
                        1,
                        (int index) {
                          return BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurRadius: 10.0,
                          );
                        },
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(249, 23, 27, 24),
                          Color.fromARGB(223, 26, 39,
                              23), // Change gradient colors as needed
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_2,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                            child: Text(
                          userName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 300,

                    //round corners

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: List<BoxShadow>.generate(
                        1,
                        (int index) {
                          return BoxShadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurRadius: 10.0,
                          );
                        },
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 18, 29, 14),
                          Color.fromARGB(207, 8, 13,
                              8), // Change gradient colors as needed
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                            child: Text(
                          email,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                        style: profilepagehomebutton,
                        onPressed: () {
                          nextScreenReplace(context, const Welcome3());
                        },
                        child: Row(
                          verticalDirection: VerticalDirection.down,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Home Page"),
                          ],
                        )),
                  ),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                        style: profilepagelogoutbutton,
                        onPressed: () {
                          authService.signOut().whenComplete(() {
                            nextScreenReplace(context, const LoginPage());
                          });
                        },
                        child: Row(
                          verticalDirection: VerticalDirection.down,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.exit_to_app),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Logout"),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
