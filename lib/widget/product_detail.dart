import 'package:flutter/material.dart';
import 'package:market/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final productde = Provider.of<Products>(context, listen: false);
    final prods = productde.getProducts();
    return ListView.builder(
      itemCount: prods.length,
      itemBuilder: (context, index) {
        final prod = prods[index];
        return ListTile(
          leading: Image.network(prod.imageUrl),
          title: Text(prod.title),
        );
      },
    );
  }
}