import 'package:flutter/material.dart';
//import 'package:market/providers/products.dart';
//import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final String brand;
  
  const ProductDetailScreen({required this.brand, super.key});

  @override
  Widget build(BuildContext context) {
    //final productde = Provider.of<Products>(context, listen: false);
    //final product = productde.getProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          brand, 
          style: TextStyle(
            backgroundColor: Color.fromARGB(255, 200, 199, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor
          ),
        ),
        actions: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 200, 199, 255)
            ),
            onPressed: () {}, 
            icon: Icon(Icons.bookmark_border)
          )
        ],
      ),
    );
  }
}