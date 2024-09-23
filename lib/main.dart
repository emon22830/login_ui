import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff203142),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Get Numerious Adventure From\n A Single App',
                  textAlign: TextAlign.center,
maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff405988),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
