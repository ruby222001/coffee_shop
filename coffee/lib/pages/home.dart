import 'package:coffee/const.dart';
import 'package:coffee/pages/home_page.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            const SizedBox(height: 10),
            const Text(
              'Brew Day',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'How Would You like your Coffee?',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              ), // Close the style here
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 78, 51, 40),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 50,
                  child: const Center(
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
