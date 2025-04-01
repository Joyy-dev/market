import 'package:flutter/material.dart';
import 'package:market/providers/products.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final product = productsData.getProducts();
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3/4
        ), 
        itemBuilder: (context, index) {
          final products = product[index];
          return Card(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    products.imageUrl, 
                    fit: BoxFit.cover, 
                  )
                ),
                Text(
                  products.title, 
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Text(
                  '\$${products.price}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold
                  )
                )
              ],
            )
          );
        },
      ),
    );
  }
}