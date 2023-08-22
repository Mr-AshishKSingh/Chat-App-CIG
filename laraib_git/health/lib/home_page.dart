import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthify'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        //Ai image
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                    width: 120,
                    height: 100,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 44, 205, 226),
                      shape: BoxShape.circle,
                    )),
              ),
              Container(
                  height: 123,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/images.jpg'))))
            ],
          ),
          //chats
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin:
                const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(11)),
            child: const Text(
              "The world of cure",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Cera Pro', fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
