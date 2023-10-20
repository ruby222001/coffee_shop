import 'package:coffee/const.dart';
import 'package:coffee/pages/home_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
          children: [
            Image.asset(
              'lib/images/coffee.png', // Adjust the image path based on your project structure
              height: 200, // Set the desired image height
            ),
            SizedBox(height: 10),
            Text(
              'Brew Day',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'How Would You like your Coffee?',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              ), // Close the style here
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 78, 51, 40),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 50,
                  child: Center(
                    child: Text(
                      'Enter Shop',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
