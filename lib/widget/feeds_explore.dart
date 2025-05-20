import 'package:flutter/material.dart';
import 'package:market/providers/products.dart';
import 'package:provider/provider.dart';

class FeedsExplore extends StatelessWidget {
  const FeedsExplore({super.key});

  @override
  Widget build(BuildContext context) {
    final feedData = Provider.of<Products>(context);
    final explore = feedData.getProducts();
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 3/4

      ), 
      itemBuilder: (context, index) {
        final exploreFeed = explore[index];
        return GridTile(
          child: Image.network(exploreFeed.imageUrl)
        );
      },
    );
  }
}