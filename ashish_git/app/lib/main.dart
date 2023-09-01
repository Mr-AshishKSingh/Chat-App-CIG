import 'package:app/Pages/Login/registration.dart';
import 'package:app/Pages/HomePage/welcome3.dart';
import 'package:app/shared/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'Pages/Login/LoginPage.dart';
import 'package:app/SharedData/helper/helper_function.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    await Firebase.initializeApp();
  }

    
  
 
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp ({Key? key})  : super( key: key );

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _isSignedIn = false;



  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }



getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context ){
    return  MaterialApp(
      debugShowCheckedModeBanner:  false ,
      home : _isSignedIn ?  const Welcome3() : const LoginPage(),
    );
  }
}