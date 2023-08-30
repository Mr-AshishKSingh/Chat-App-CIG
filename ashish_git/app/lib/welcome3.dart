import 'package:app/Pages/chatgroups.dart';
import 'package:app/Pages/findyourdoctorpage.dart';
import 'package:app/button.dart';
import 'package:app/service/authentication.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:app/Pages/searchpage.dart';



class Welcome3 extends StatefulWidget {
  const Welcome3({super.key});

  @override
  State<Welcome3> createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  int currentPageIndex = 0;
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 22,
        title: Center(child: const Text('Welcome')),
        backgroundColor: Color.fromARGB(255, 61, 35, 207),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
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
        backgroundColor: Color.fromARGB(250, 255, 255, 255)      ,
          body: SafeArea(
            child: Container(
              child: Column(
            children: [
             

              ElevatedButton(
                child : Text("LOG OUT "),
                onPressed: () {
                  authService.signOut();
                }
              ),


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
                child: ListView(
                  children: [Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(107, 24, 24, 0),
                        border: Border.all(color: Color.fromARGB(2, 255, 204, 1)),
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
                                      color: Color.fromRGBO(29, 24, 168, 0.667),
                                      border: Border.all(
                                          color: Color.fromARGB(2, 255, 204, 1)),
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
                                              color:
                                                  Color.fromARGB(255, 254, 253, 253),
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
                                          child: Text('Click Here ' , style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 254, 253, 253),
                                            ),),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => SearchPage()),
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
                                    color: Color.fromRGBO(218, 48, 173, 0.635),
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
                                              color: Color.fromARGB(255, 254, 253, 253),
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
                                                  builder: (context) => FindDoctor()),
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
                                      color: Color.fromRGBO(21, 190, 246, 0.626),
                                      border: Border.all(
                                          color: Color.fromARGB(2, 255, 204, 1)),
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
                                              color:
                                                  Color.fromARGB(255, 254, 253, 253),
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
                                                  builder: (context) => SearchPage()),
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
                                    color: Color.fromRGBO(255, 177, 10, 0.66),
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
                                              color: Color.fromARGB(255, 254, 253, 253),
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
                                                  builder: (context) => FindDoctor()),
                                            );
                                          },
                                        ),
                
                
                
                
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                
                          const  SizedBox(
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
                                      color: Color.fromRGBO(255, 4, 75, 0.744),
                                      border: Border.all(
                                          color: const Color.fromARGB(2, 255, 204, 1)),
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
                                              color:
                                                  Color.fromARGB(255, 254, 253, 253),
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
                                                  builder: (context) => chatpage()),
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
                                    color: Color.fromRGBO(38, 247, 73, 0.527),
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
                                              color: Color.fromARGB(255, 254, 253, 253),
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
                                                  builder: (context) => FindDoctor()),
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
