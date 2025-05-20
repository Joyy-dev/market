import 'package:flutter/material.dart';
import 'package:market/providers/products.dart';
import 'package:provider/provider.dart';

class FeedsUpdate extends StatelessWidget {
  const FeedsUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    final feedsData = Provider.of<Products>(context);
    final update = feedsData.getProducts();
    return ListView.builder(
      itemCount: update.length,
      itemBuilder: (context, index) {
        final feedsUpdate = update[index];
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.network(feedsUpdate.logo)
              ),
              title: Text(feedsUpdate.brandName, style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),),
              subtitle: Text(feedsUpdate.followers),
              trailing: TextButton(
                onPressed: () {}, 
                child: Text('follow', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),),
              ),
            ),
            Image.network(feedsUpdate.imageUrl),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(feedsUpdate.description, style: TextStyle(fontSize: 15),),
                ],
              ),
            )
          ],
        );
      }
    );
  }
}