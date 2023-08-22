import 'package:flutter/material.dart';




class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key})  : super( key: key );


  @override
  State<LoginPage> createState() => LoginPageState();
}


class LoginPageState extends State < LoginPage > {
  @override
  Widget build(BuildContext context ){
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 108, 232, 156),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           //logo

          const  CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/pfp2.png'),

          ),
          

          const  Text(
            ' WELCOME ', 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),),

          const   SizedBox(height: 10,),
          Text(
            ' Please fill the below Details  ', 
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),

          SizedBox(height: 10,),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color : Color.fromRGBO(207, 223, 180, 0.74),
                border  : Border.all(color : Color.fromARGB(255, 194, 245, 165)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding:  EdgeInsets.only(left: 110),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' Your Name ',
                  ),
                ),
              ),
            ),
          ),


          SizedBox(height: 10,),

          // sign in button 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal : 40.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color : Color.fromARGB(255, 115, 28, 229),
                border  : Border.all(color : Color.fromARGB(255, 148, 12, 178)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text('Log In' , 
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold ,
                fontSize: 15,
              ),)),
            ),
          )


        ]),
      )

    );
  }
} 