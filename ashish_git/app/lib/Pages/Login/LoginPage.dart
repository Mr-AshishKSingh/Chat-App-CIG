import 'package:app/FireBase/service/authentication.dart';
import 'package:app/FireBase/service/database_service.dart';
import 'package:app/Pages/HomePage/welcome3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:app/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:app/service/authentication.dart';
import 'package:app/SharedData/helper/helper_function.dart';

import '../../SharedData/button.dart';
import 'package:app/Pages/Login/registration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
          backgroundColor: Color.fromARGB(0, 253, 253, 253),
          body:  _isLoading ? Center(child: CircularProgressIndicator()) :  Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Lottie.asset(
                        "assets/images/loginimage.json",
                        width: 400,
                        height: 400,
                      ),
                       Text(
                        ' Welcome ',
                        style: GoogleFonts.pacifico(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 250, 250, 252),
                            fontSize: 40,
                            
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(223, 253, 251, 253), Color.fromARGB(186, 255, 255, 255)])),
                         
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Email',
                                prefixIcon: Icon(Icons.email,
                                    color: Color.fromARGB(255, 31, 34, 254))),
                            onChanged: (val) {
                              setState(() {
                                email = val;
                                //print(email);
                              });
                            },
                            
                            //validator
                            validator: (val) {
                              return RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(val!)
                                  ? null
                                  : "Please enter a valid email";
                            },
                          ),
                        ),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(204, 255, 255, 255), Color.fromARGB(186, 255, 255, 255)])),
                          child: TextFormField(
                            obscureText: true,
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Password',
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
                                password = val;
                                //print(password);
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          style: buttonPrimary,
                          child: Text('LOG IN  '),
                          onPressed: () {
                            login();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Welcome2()),
                            // );
                          },
                        ),
                      ),
    
                      // Container(
                      //   child: ElevatedButton(
                      //     style: buttonPrimary,
                      //     child: Text('REGISTER'),
                      //     onPressed: () {
                      //       //nextScreen(context,  RegisterPage());
                      //        Navigator.push(
                      //         context,
                      //         MaterialPageRoute(builder: (context) => RegisterPage()),
                      //      );
                      //     },
                      //   ),
                      // ),
    
                      //rich etxt
                      Text.rich(TextSpan(
                        text: "Don't have an account? ",
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 250, 250, 252),
                            fontSize: 15,
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                color: Color.fromARGB(255, 254, 31, 31),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  nextScreen(context, const RegisterPage());
                                }),
                        ],
                      ))
                    ]),
              ),
            ),
          )
          
          
          ),
    );
  }

  login() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .loginWithUserNameandPassword( email, password)
          .then((value) async {
        if (value == true) {
          // saving the shared preference state
          QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(email);
          // saving the values to our shared preferences
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(email);
          await HelperFunctions.saveUserNameSF(snapshot.docs[0]['fullName']);
          nextScreenReplace(context, const Welcome3());

         
          nextScreenReplace(context, const Welcome3());
        } else {
          showSnackbar(context, Colors.red, value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
}
}
