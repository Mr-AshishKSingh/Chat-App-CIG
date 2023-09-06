import 'package:shared_preferences/shared_preferences.dart';



class HelperFunctions {
    //keys 

  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userVillageKey = "USERVILLAGEKEY";
  
  static String usersubmissionKey = "USERSUBMISSIONKEY";
  


  //saving data




  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }

  static Future<bool> saveUserFundSubmission(String village) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(usersubmissionKey, village);
  }



  // retrieving data

   static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }


// funds
  static Future<bool?> getsubmissionstatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(usersubmissionKey);
  }

  static Future<String?> getUserEmailFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }


}