import 'package:custom_navigation_app/main.dart';
import 'package:custom_navigation_app/productPage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Intro Page"),
      //   backgroundColor: Colors.amberAccent,
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 1, 59, 15),
              Color.fromARGB(208, 32, 122, 40)
            ], // Define the gradient colors
            begin: Alignment.topRight, // Define the gradient start point
            end: Alignment.bottomRight, // Define the gradient end point
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://i.ibb.co/YyMNX3d/basket-removebg-preview.png',
              height: 300.0,
              width: 300.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              "Quality ingredients, quality moments.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  maximumSize: const Size(200, 50),
                  backgroundColor: const Color.fromARGB(
                      255, 255, 255, 255), // background (button) color
                  foregroundColor: const Color.fromARGB(
                      255, 0, 0, 0), // foreground (text) color
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/allProduct');
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            // CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
