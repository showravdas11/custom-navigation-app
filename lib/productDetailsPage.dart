import 'package:custom_navigation_app/productItem.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
// Receive the product ID passed from the product list page
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text('sdfsffsf'),
      ),
      body: Center(
        child: Container(
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
            children: [
                  Image.network(
                product.image,
                height: 200,
              ),
              SizedBox(height: 15),
              Text(
                product.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                r'$' + product.price,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
              ),
        
              SizedBox(height: 40,),
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
                    // Navigator.pushNamed(context, '/allProduct');
                  },
                  child: Text(
                    "Buy Now",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
