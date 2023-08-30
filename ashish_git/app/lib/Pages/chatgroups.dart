import 'package:app/LoginPage.dart';
import 'package:app/Pages/profilepage.dart';
import 'package:app/button.dart';
import 'package:app/helper/helper_function.dart';
import 'package:app/service/authentication.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class chatpage extends StatefulWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  State<chatpage> createState() => chatpageState();
}

class chatpageState extends State<chatpage> {
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),

          // ElevatedButton(onPressed: (){}, child: Text("ashish"))
          // Image.asset('assets/images/Logo.png', height: 50, width: 50,),
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 60, 229),
        title: Text('Chat Groups'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 83, 73, 228),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Lottie.asset(
              "assets/images/drawer.json",
              width: 100,
              height: 300,
            ),

            Center(
              child: Padding(
                
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(132, 99, 104, 207),
                    
                  ),
                 
                 
                   child: Center(
                     child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [

                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(userName[0] , style: TextStyle( fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                        ),
                        Text(userName , style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white),),
                        Text(email , style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white),)
                   
                      ],
                     ),
                   ),
                 
                ),
              ),
            ),


            //  Center(
            //   child: Padding(
                
            //     padding: const EdgeInsets.all(10.0),
            //     child: Container(
            //       height: 40,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5),
            //         color: Color.fromARGB(132, 99, 104, 207),
                    
            //       ),
                 
                 
            //        child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //          Padding(
            //            padding: const EdgeInsets.all(8),
            //            child: Text(email , style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white), )
            //          )
            //         ],
            //        ),
                 
            //     ),
            //   ),
            // ),

          const Divider(
            height: 10,
            thickness: 5,
            
            


          ),

          //  Text(userName , style: TextStyle(color: Colors.white)),
          //   Text(email , style: TextStyle(color: Colors.white)),
          
           
            ListTile(
              selectedColor: Colors.white,
              selected: true,
              contentPadding: EdgeInsets.all(10),
              leading: const Icon(Icons.hub_rounded),

              title: const Text('Groups'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            
            // ListTile(
            //   selectedColor: Colors.white,
            //   selected: true,
            //   contentPadding: EdgeInsets.all(10),
            //   leading: const Icon(Icons.hub_rounded),

            //   title: const Text('Groups'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            
            // ListTile(
            //   selectedColor: Colors.white,
            //   selected: true,
            //   contentPadding: EdgeInsets.all(10),
            //   leading: const Icon(Icons.hub_rounded),

            //   title: const Text('Groups'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            
            // ListTile(
            //   selectedColor: Colors.white,
            //   selected: true,
            //   contentPadding: EdgeInsets.all(10),
            //   leading: const Icon(Icons.hub_rounded),

            //   title: const Text('Groups'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: ElevatedButton(
                                            style: drawerprofile,
                                            child: Text('Profile'),
                                            
                                            onPressed: () {
                                              nextScreenReplace(context, const ProfilePage());
                                            },
                                          ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70,),
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
    );
  }
}
