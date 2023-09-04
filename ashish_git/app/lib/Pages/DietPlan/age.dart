import 'package:flutter/material.dart';


class age extends StatefulWidget {
  const age ({Key? key}) : super(key: key);

  @override
  State<age> createState() => ageState();

}
class ageState extends State<age>{
  int isSelect = 0;


  @override 
  Widget build(BuildContext context ){
    var charBorderSelected = BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: Colors.blue,
        width: 3,
      ),
    );

    var charBorderDeSelected = BoxDecoration(
        // color: Color.fromARGB(255, 83, 73, 228),
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: Color.fromARGB(255, 153, 156, 159),
        width: 2,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Dietpaln "),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
         color:Colors.blue.shade50,
        border: Border.all(
          width: 4,
          color: const Color.fromARGB(255, 14, 63, 104),
        )
        ),
        child: Column(children: [
          Container(
            width: 400,
             padding: const EdgeInsets.only(top: 60.0,left: 65),
             child: Text("What is your age? ",
             style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
            ),
          ),
          SizedBox(height: 60,),

            InkWell(
              onTap: (){
                setState(() {
                  isSelect=1;
                });
              },
             child: Container(
                   
                    width: 300,
                    height: 50,
                     decoration:  isSelect == 0 ? charBorderDeSelected : isSelect == 1 ? charBorderSelected : charBorderDeSelected,
                     child:Center(
                      child: Text("New born",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),),
                     )
                     
              )

            ),
            SizedBox(height: 40,),
             
            InkWell(
              onTap: (){
                setState(() {
                  isSelect=2;
                });
              },
             child: Container(
                   
                    width: 300,
                    height: 50,
                     decoration:  isSelect == 0 ? charBorderDeSelected : isSelect == 2 ? charBorderSelected : charBorderDeSelected,
                     child:Center(
                      child: Text("1-12",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),),
                     )
                     
              )

            ),
           
            SizedBox(height: 40,),
             
            InkWell(
              onTap: (){
                setState(() {
                  isSelect=3;
                });
              },
             child: Container(
                   
                    width: 300,
                    height: 50,
                     decoration:  isSelect == 0 ? charBorderDeSelected : isSelect == 3 ? charBorderSelected : charBorderDeSelected,
                     child:Center(
                      child: Text("13-24",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),),
                     )
                     
              )

            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                setState(() {
                  isSelect=4;
                });
              },
             child: Container(
                   
                    width: 300,
                    height: 50,
                     decoration:  isSelect == 0 ? charBorderDeSelected : isSelect == 4 ? charBorderSelected : charBorderDeSelected,
                     child:Center(
                      child: Text("25-50",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),),
                     )
                     
              )

            ),
           SizedBox(height: 40,),
           InkWell(
              onTap: (){
                setState(() {
                  isSelect=5;
                });
              },
             child: Container(
                   
                    width: 300,
                    height: 50,
                     decoration:  isSelect == 0 ? charBorderDeSelected : isSelect == 5 ? charBorderSelected : charBorderDeSelected,
                     child:Center(
                      child: Text("50+",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),),
                     )
                     
              )

            ),
            SizedBox(height: 40,),
            Container(
                  padding: const EdgeInsets.only(top: 30.0),
                   child: ElevatedButton(
                    onPressed: () {
                      print("Submit age Selected ");
                      if(isSelect == 1){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }else if(isSelect == 2){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }else if(isSelect == 3){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }else if(isSelect == 4){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }else if(isSelect == 5){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }

                    },
                    child: Text('Continue', style: TextStyle(fontSize: 20),),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  )
                )

        ]),
      ),
    );
  }
}