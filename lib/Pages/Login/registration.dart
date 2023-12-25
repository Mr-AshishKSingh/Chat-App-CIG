import 'package:app/Pages/Login/LoginPage.dart';
import 'package:app/FireBase/service/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../HomePage/welcome3.dart';
import '../../SharedData/button.dart';
import 'package:app/SharedData/helper/helper_function.dart';

import 'package:flutter/gestures.dart';

import 'package:lottie/lottie.dart';
import 'package:app/widgets/widgets.dart';




class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _Welcome2State();
}

class _Welcome2State extends State<RegisterPage> {
  bool _isLoading = false;
  AuthService authService = AuthService();
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullname = "";
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
          body:_isLoading ? Center(child : CircularProgressIndicator()) : Center(
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
                        "assets/images/registerimage.json",
                        width: 400,
                        height: 400,
                      ),
                       Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text(
                          ' ENTER DETAILS TO REGISTER ',
                          style: GoogleFonts.oswald(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 250, 250, 252),
                              fontSize: 20,
                              
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
    
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration:  BoxDecoration(
                            color: Color.fromARGB(218, 251, 251, 252),
                            borderRadius:  BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Name',
                                prefixIcon: Icon(Icons. person_2_rounded,
                                    color: Color.fromARGB(255, 20, 20, 255))),
                            onChanged: (val) {
                              setState(() {
                                fullname = val;
                                //print(email);
                              });
                            },
                            
                            //validators
                            validator: (val) {
                              return val!.isEmpty ? "Enter your name" : null;
                            },
                          ),
                        ),
                      ),
    
     
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(213, 250, 250, 255),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Email',
                                prefixIcon: Icon(Icons.alternate_email_rounded,
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
                          decoration: BoxDecoration (
                            color: Color.fromARGB(216, 251, 251, 252),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
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
                          child: Text('Register' ,
                          style : GoogleFonts.pacifico(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              
                            ),
                          )
                          ),
                          onPressed: () {
                            //login();
    
    
                            register();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Welcome2()),
                            // );
                          },
                        ),
                      ),
    
                      
    
                      //rich etxt
                      Text.rich(TextSpan(
                        text: "Already have an account? ",
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 250, 250, 252),
                            fontSize: 15,
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Login',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 7, 255, 19),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  nextScreen(context, const LoginPage());
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

  

 register() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .registerUserWithEmailandPassword(fullname, email, password)
          .then((value) async {
        if (value == true) {
          // saving the shared preference state
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(email);
          await HelperFunctions.saveUserNameSF(fullname);
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
