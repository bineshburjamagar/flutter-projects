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
        backgroundColor: const Color.fromARGB(255, 105, 52, 249),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/vedagrind.png'),
                ),
                Text(
                  'Veda Grind',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontFamily: 'Caveat',
                  ),
                ),
                Text(
                  'UI UX DEVELOPER',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 186, 224, 255),
                    fontFamily: 'BebasNeue',
                    letterSpacing: 3.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal,
                  ),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 105, 52, 249),
                      ),
                      title: Text(
                        '+97798012345678',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 105, 52, 249)),
                      ),
                    )),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 105, 52, 249),
                    ),
                    title: Text(
                      'vedagrind@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 105, 52, 249),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
