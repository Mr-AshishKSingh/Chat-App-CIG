import 'package:app/button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:app/Pages/searchpage.dart';

class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 51, 180),
        body: Container(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    //Color: Color.fromARGB(255, 255, 255, 255),
                    width: 100,
                    child: Lottie.asset(
                      "assets/images/animatoin1.json",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.5),
                  child: Text(
                    "WELCOME ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 254, 253, 253)),
                  ),
                ),
                ElevatedButton(
                  style: gobackbutton_welcome3,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(47, 9, 234, 1),
                border: Border.all(color: Color.fromARGB(2, 255, 204, 1)),
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(3),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(47, 9, 234, 1),
                  border: Border.all(color: Color.fromARGB(2, 255, 204, 1)),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Lottie.asset(
                        "assets/images/list.json",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Please select your requirement ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(255, 254, 253, 253),
                          )),
                    ),
                  ],
                )),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(47, 9, 234, 1),
                border: Border.all(color: Color.fromARGB(2, 255, 204, 1)),
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(3),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
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
                      children: [
                        Center(
                          child: Container(
                              width: 150,
                              height: 230,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(29, 24, 168, 0.961),
                                border: Border.all(
                                    color: Color.fromARGB(2, 255, 204, 1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Search",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 254, 253, 253),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "for medicines",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 254, 253, 253),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Lottie.asset(
                                    "assets/images/medicine.json",
                                    width: 100,
                                    height: 100,
                                  ),
                                  ElevatedButton(
                                    style: ClickHere,
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
                        Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(2, 0, 10, 1),
                              border: Border.all(
                                  color: Color.fromARGB(2, 255, 204, 1)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 254, 253, 253),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                )),
          ],
        )));
  }
}
