import 'package:flutter/material.dart';
import 'package:market/model/color_swatches.dart';

class ProductDetailScreen extends StatefulWidget {
  final String title;
  final String description;
  final double rating;
  final String brand;
  final String imageUrl;
  final double price;
  final List<Color> color;

  
  const ProductDetailScreen({
    required this.title,
    required this.description,
    required this.rating,
    required this.brand, 
    required this.imageUrl, 
    required this.price,
    required this.color,
    super.key
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int selectedColorIndex = 0;

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
              widget.brand, 
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 470,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.imageUrl), fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).splashColor,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Theme.of(context).splashColor,
                      borderRadius: BorderRadius.circular(9), 
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 18,),
                        SizedBox(width: 3,),
                        Text(
                          widget.rating.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "\$${widget.price.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).splashColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Color',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).splashColor
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              child: ColorSwatches(
                color: widget.color, 
                selectedIndex: selectedColorIndex, 
                onchanged: (index) {
                  setState(() {
                    selectedColorIndex = index;
                  });
                }
              ),
            )
          ],
        ),
      )
    );
  }
}