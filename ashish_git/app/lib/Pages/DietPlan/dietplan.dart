import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:app/Pages/age.dart';

class dietpage extends StatefulWidget {
  const dietpage({Key? key}) : super(key: key);

  @override
  State<dietpage> createState() => dietpageState();
}

class dietpageState extends State<dietpage>{
  int isMale = 0;


  @override 
  Widget build(BuildContext context ){
    var charBorderSelected = BoxDecoration(
        // color: Color.fromARGB(255, 83, 73, 228),
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        // color: Color.fromARGB(255, 100, 181, 246),
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
        title: Text("Diet Plan"),
        backgroundColor: Colors.blue,
      ),
       body: Container(
         child: Container(
          color:Colors.blue.shade50,
           child: Column(
              children: [ 
                Container(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text("Please Select Your Gender", 
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                  
                Container(
                  width: 100,
                  height: 2,
                  color: Colors.blue.shade500,
                ),
                SizedBox(height: 20,),
                  
                Container(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                isMale = 1;
                              });
                            },
                            child:Container(
                              width: 150,
                              height: 150,
                              decoration:  isMale == 0 ? charBorderDeSelected : isMale == 1 ? charBorderSelected : charBorderDeSelected,
                              child:
                                Lottie.asset("assets/images/malephoto.json",
                                
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),
         
                          Text("Men ",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                isMale = 2;
                              });
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration:  isMale == 0 ? charBorderDeSelected : isMale == 2 ? charBorderSelected : charBorderDeSelected,
                              child:
                                Lottie.asset("assets/images/animation3.json",
                                width: 300,
                                height: 300,
                                ),
                            ),
                          ),
         
                          SizedBox(height: 10,),
         
                          Text("Women",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ]
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("What do you want to do?", 
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade500,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Select One", 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),

                // SizedBox(height: 25,),

                Container(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Submit Gender Selected ");
                      if(isMale == 1){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }else if(isMale == 2){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> age()));
                      }
                    },
                    child: Text('Submit', style: TextStyle(fontSize: 20),),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.blue.shade400,
                      backgroundColor: Colors.blue.shade50,
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  )
                )

              ]
            ),
         ),
       ),
       );
}
}
