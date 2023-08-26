import 'package:flutter/material.dart';
import 'welcome3.dart';
import 'button.dart';

class Welcome2 extends StatelessWidget {
  Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //background color
        backgroundColor: Color.fromARGB(255, 231, 51, 180),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),

              //container for image

              Container(
                child: Image.asset(
                  'assets/images/doctor3.png',
                  height: 300,
                  width: 300,
                ), //
              ),

              // textfield  for name

              Container(
                child: const Text(
                  'PLEASE FILL THE DETAILS BELOW',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 254, 253, 253)),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //TEXT FIELD FOR NAME

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(207, 223, 180, 0.74),
                    border:
                        Border.all(color: Color.fromARGB(255, 194, 245, 165)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Your Name ',
                      ),
                    ),
                  ),
                ),
              ),

            const SizedBox(
                height: 10,
              ),


              //container for button

              Container(
              child: ElevatedButton(
                style: button2Primary,
                child: Text('NEXT '),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Welcome3(
                      
                    )),
                  );
                },
              ),
            ),

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
          ),
        ));
  }
}
