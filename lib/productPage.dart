import 'package:custom_navigation_app/main.dart';
import 'package:custom_navigation_app/productDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_app/productItem.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List products = productData().products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 246, 201, 0.796),
      appBar: AppBar(
        title: Text("Our Product Page"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // automaticallyImplyLeading: false,
      ),
      body: Container(
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
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22,color: Colors.white),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 20,
                        childAspectRatio: 0.73),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                              settings: RouteSettings(
                                arguments: products[index],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: Color(products[index].color),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.network(
                                    products[index].image,
                                    height: 160,
                                  )),
                            ),
                            Text(products[index].name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400,color: Colors.white)),
                            Text(
                              r'$' + products[index].price,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700,color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
