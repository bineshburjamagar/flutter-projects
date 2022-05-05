import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 159, 124, 255),
        body: SafeArea(
          child: Column(children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/vedagrind.png'),
            ),
            const Text(
              'Veda Grind',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                fontFamily: 'Caveat',
              ),
            ),
            const Text(
              'UI UX DEVELOPER',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 186, 224, 255),
                fontFamily: 'BebasNeue',
                letterSpacing: 3.5,
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 186, 224, 255),
              padding: const EdgeInsets.all(10.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '+97798012345678',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 186, 224, 255),
              padding: const EdgeInsets.all(10.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'vedagrind@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
