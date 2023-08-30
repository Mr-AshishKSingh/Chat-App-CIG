import 'package:app/LoginPage.dart';
import 'package:app/Pages/chatgroups.dart';
import 'package:app/Pages/findyourdoctorpage.dart';
import 'package:app/Pages/profilepage.dart';
import 'package:app/button.dart';
import 'package:app/helper/helper_function.dart';
import 'package:app/service/authentication.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:app/Pages/searchpage.dart';

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
                              child: Text(
                                userName[0],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),


                          SizedBox(height: 10,),
                          Container(
                            height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(136, 65, 52, 181),
                              ),
                              child: Center(
                                child: Text(
                                  
                                  userName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                          SizedBox(height: 5,),
                          Container(

                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(136, 65, 52, 181),
                            ),
                            child: Center(
                              child: Text(
                                email,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
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

        //-------------------
        // bottomNavigationBar: NavigationBar(
        //   backgroundColor: Color.fromARGB(134, 30, 12, 72),
        //   onDestinationSelected: (int index) {
        //     setState(() {
        //       currentPageIndex = index;
        //     });
        //   },
        //   indicatorColor: Color.fromARGB(255, 163, 8, 230),
        //   selectedIndex: currentPageIndex,
        //   destinations: const <Widget>[
        //     NavigationDestination(

        //       selectedIcon: Icon(Icons.home),
        //       icon: Icon(Icons.add_circle),
        //       label: 'Under Development',

        //     ),
        //     NavigationDestination(
        //       icon: Icon(Icons.add_circle_outline),
        //       label: 'Under Development',
        //     ),
        //     NavigationDestination(
        //       selectedIcon: Icon(Icons.add_circle),
        //       icon: Icon(Icons.school_outlined),
        //       label: 'Under Development',
        //     ),
        //   ]
        // ),

        //---------------
        backgroundColor: Color.fromARGB(190, 107, 113, 238),
        body: SafeArea(
          child: Container(
              child: Column(
            children: [
              // ElevatedButton(
              //     child: Text("LOG OUT "),
              //     onPressed: () {
              //       authService.signOut();
              //     }),

              // Container(
              //   height: 150,
              //     decoration: BoxDecoration(
              //       color: Color.fromRGBO(9, 14, 70, 1),
              //       //border: Border.all(color: Color.fromARGB(255, 52, 255, 7)),
              //       borderRadius: BorderRadius.circular(0),
              //     ),
              //     margin: EdgeInsets.symmetric(horizontal: 0),
              //     padding: EdgeInsets.all(10),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.symmetric(horizontal: 5),
              //           child: Lottie.asset(
              //             "assets/images/list.json",
              //             width: 50,
              //             height: 50,
              //           ),
              //         ),
              //         const Padding(
              //           padding: EdgeInsets.all(10),
              //           child: Text(" WELCOME Please select your requirement ",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 15,
              //                 color: Color.fromARGB(255, 254, 253, 253),
              //               )),
              //         ),
              //       ],
              //     )),

              const SizedBox(
                height: 5,
              ),

              // Container(
              //   decoration: BoxDecoration(
              //     color: Color.fromRGBO(47, 9, 234, 1),
              //     border: Border.all(color: Color.fromARGB(2, 255, 204, 1)),
              //     borderRadius: BorderRadius.circular(0),
              //   ),
              //   margin: EdgeInsets.symmetric(horizontal: 0),
              //   padding: EdgeInsets.all(3),
              // ),

              const SizedBox(
                height: 10,
              ),

              Expanded(
                child: ListView(children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(107, 24, 24, 0),
                        border:
                            Border.all(color: Color.fromARGB(2, 255, 204, 1)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(3),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Container(
                                    width: 170,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 162, 2, 0.667),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(2, 255, 204, 1)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Search Medicine",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Lottie.asset(
                                          "assets/images/medicine.json",
                                          width: 100,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        ElevatedButton(
                                          style: ClickHere_SearchMedicine,
                                          child: Text(
                                            'Click Here ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchPage()),
                                            );
                                          },
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(width: 10),
                              Container(
                                  width: 170,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 0, 187, 0.968),
                                    border: Border.all(
                                        color: Color.fromARGB(2, 255, 204, 1)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Find Your Doctor",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                        ),
                                        Lottie.asset(
                                          "assets/images/findyourdoctor.json",
                                          width: 120,
                                          height: 130,
                                        ),
                                        ElevatedButton(
                                          style: ClickHere_FindDoctor,
                                          child: Text('Click Here '),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FindDoctor()),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Container(
                                    width: 170,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color:
                                          Color.fromRGBO(0, 225, 255, 0.928),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(2, 255, 204, 1)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Find Hospital",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                        ),
                                        Lottie.asset(
                                          "assets/images/findhospital.json",
                                          width: 120,
                                          height: 130,
                                        ),
                                        ElevatedButton(
                                          style: ClickHere_FindHospital,
                                          child: Text('Click Here '),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchPage()),
                                            );
                                          },
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(width: 10),
                              Container(
                                  width: 170,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 244, 43, 1),
                                    border: Border.all(
                                        color: Color.fromARGB(2, 255, 204, 1)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Get Funds",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                        ),
                                        Lottie.asset(
                                          "assets/images/money.json",
                                          width: 120,
                                          height: 130,
                                        ),
                                        ElevatedButton(
                                          style: ClickHere_GetFunds,
                                          child: Text('Click Here '),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FindDoctor()),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Container(
                                    width: 170,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(243, 7, 74, 1),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              2, 255, 204, 1)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Find Chat Groups",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                        ),
                                        Lottie.asset(
                                          "assets/images/chat.json",
                                          width: 120,
                                          height: 130,
                                        ),
                                        ElevatedButton(
                                          style: ClickHere_FindChat,
                                          child: Text('Click Here '),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      chatpage()),
                                            );
                                          },
                                        ),
                                      ],
                                    )),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                  width: 170,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 255, 42, 1),
                                    border: Border.all(
                                        color: Color.fromARGB(2, 255, 204, 1)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Get Diet Plan",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 254, 253, 253),
                                            ),
                                          ),
                                        ),
                                        Lottie.asset(
                                          "assets/images/diet.json",
                                          width: 120,
                                          height: 130,
                                        ),
                                        ElevatedButton(
                                          style: ClickHere_DietPan,
                                          child: Text('Click Here '),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FindDoctor()),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          )
                        ],
                      )),
                ]),
              ),
            ],
          )),
        ));
  }
}
