import 'package:app/Pages/Funds/funds2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


class fundspage extends StatefulWidget {
  const fundspage({Key? key}) : super(key: key);

  @override
  State<fundspage> createState() => fundspageState();
}

class fundspageState extends State<fundspage>{
  String  village = "";
  String  district = "";
  String  state = "";
  String  pincode = "";
  String  address = "";
  bool checked  = false;
  


  @override 
  Widget build(BuildContext context ){
    return Scaffold(

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 248, 154, 2),
        onPressed: () {

          if(checked == true){
            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Funds2()));
          }else{
            showDialog(
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text(" Please agree to the terms and services"),
                  content: Lottie.asset ("assets/images/alert.json",height: 100,width: 100),
                  actions: [

                    
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("Ok" , style: GoogleFonts.oswald(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 5, 0, 0),
                      ),
                    ),
                    ),
                  ],

                  backgroundColor: Color.fromARGB(255, 248, 2, 2),
                  

                );
              },
            );
          }

    



        },
        icon: const Icon(Icons.next_plan),
        label:  Text('Continue' , 
        style: GoogleFonts.oswald(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 255, 255, 255),
        ),




      ),
      
      
      
      
      ),
      backgroundColor: Color.fromARGB(204, 216, 9, 9),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            
            
      
            children: [
              
      
              SizedBox(
                height: 100,
              ),
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(232, 242, 73, 0),
                ),
                
                width : 200,
                
                child : 
                Text("Funds",textAlign: TextAlign.center,style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
               
      
                 
               
              ),


              //sized box

              SizedBox(
                height: 50,
              ),


              //container for terms and services 
              //
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(204, 245, 243, 243),
                  ),
                  
                  width : 350,
                  height : 500,
                  
                  child : 
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width : 300,
                        decoration : BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(252, 11, 0, 0),
                        ),
                        child: Text("Terms and Conditions",textAlign: TextAlign.center,style: GoogleFonts.questrial(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                 
                    
                   
                 
                ),
              ),




              SizedBox(
                height: 50,
              ),


              Container(
                width : 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(44, 0, 0, 0),
                ),
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: checked,
                      onChanged: (value){
                        setState(() {
                          checked = value!;
                        });
                      },
                    ),
                    Text("I agree to the terms and services",style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                  ],
                ),
              )
              
            ],
        
          ),
        ),
      ),

    );
  }
}