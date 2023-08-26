import 'package:app/button.dart';
import 'package:flutter/material.dart';


class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});



  @override 
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor:  Color.fromARGB(255, 231, 51, 180),

      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

            Container(
                child: ElevatedButton(
                  style: gobackbutton,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              )

          
        ],
      ),)
    );
  }
 



}