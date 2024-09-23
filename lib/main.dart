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
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Screen height and width
              double screenHeight = constraints.maxHeight;
              double screenWidth = constraints.maxWidth;

              // Base padding and font size for responsiveness
              double basePadding = screenHeight * 0.03; // Adjust padding based on height
              double baseFontSize = screenHeight * 0.02; // Adjust font size based on height

              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: basePadding),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * 0.05), // Responsive spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/logo.png'),
                            height: screenHeight * 0.08, // Adjust image size
                            width: screenHeight * 0.08,
                          ),
                          SizedBox(width: screenWidth * 0.02), // Adjust horizontal spacing
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Maintainance',
                                style: TextStyle(
                                  fontSize: baseFontSize * 1.2, // Adjust font size
                                  fontFamily: 'Rubik Medium',
                                  color: Color(0xff203142),
                                ),
                              ),
                              Text(
                                'Box',
                                style: TextStyle(
                                  fontSize: baseFontSize * 1.2,
                                  fontFamily: 'Rubik Medium',
                                  color: Color(0xffF97030),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: baseFontSize * 1.5, // Adjust font size
                            fontFamily: 'Rubik Medium',
                            color: Color(0xff203142),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Center(
                        child: Text(
                          'Get Numerous Adventure From\n A Single App',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: baseFontSize, // Adjust font size
                            fontFamily: 'Rubik Regular',
                            color: Color(0xff405988),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.redAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff323F38)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      TextFormField(
                        obscureText: true, // Hide the password input
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.redAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff323F38)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text('Forgot Password?'),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.1),
                      Container(
                        height: screenHeight * 0.06, // Responsive height
                        width: screenWidth * 0.8, // Responsive width
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: baseFontSize * 1.2, // Adjust font size
                              fontFamily: 'Rubik Regular',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffF97038),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Container(
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: baseFontSize, // Adjust font size
                                fontFamily: 'Rubik Regular',
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    color: Color(0xffF97030),
                                    fontSize: baseFontSize,
                                    fontFamily: 'Rubik Medium',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
