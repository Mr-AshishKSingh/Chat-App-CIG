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
          elevation: 0,
          actions: [
            // ElevatedButton(onPressed: (){}, child: Text("ashish"))
            // Image.asset('assets/images/Logo.png', height: 50, width: 50,),
          ],
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 72, 60, 229),
          title: Text(
            "Profile Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 72, 60, 229),
        body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 72, 60, 229),
              Color.fromARGB(255, 33, 20, 128), // Change gradient colors as needed
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
                      borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 253, 0, 169),
                  Color.fromARGB(255, 223, 5, 5), // Change gradient colors as needed
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
                  Color.fromARGB(255, 0, 0, 0), // Change gradient colors as needed
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
                    height: 50,
                  ),
                  Container(
                     height: 50,
                    // width: 300,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 42, 158, 77),
                  Color.fromARGB(255, 51, 255, 0), // Change gradient colors as needed
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
                  
                  Container(
                    height: 50,
                    // width: 300,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 72, 255, 0),
                  Color.fromARGB(207, 37, 167, 37), // Change gradient colors as needed
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
