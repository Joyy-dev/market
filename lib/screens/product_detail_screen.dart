import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String brand;
  final String imageUrl;
  final double price;
  
  const ProductDetailScreen({
    required this.brand, 
    required this.imageUrl, 
    required this.price,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 200, 199, 255)
          ),
          child: Center(
            child: Text(
              brand, 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {}, 
              icon: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).splashColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(
                  Icons.chat_outlined, 
                  size: 30,
                  color: Colors.white,
                )
              )
            ),
            SizedBox(width: 10,),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  fixedSize: Size(100, 65),
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                ),
                onPressed: () {}, 
                child: Text('Add to Cart')
              )
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Image.network(imageUrl),
          Row(),
          //Text(price)
        ],
      )
    );
  }
}