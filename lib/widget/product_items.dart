import 'package:flutter/material.dart';
import 'package:market/providers/products.dart';
import 'package:market/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final product = productsData.getProducts();
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 4
        ), 
        itemBuilder: (context, index) {
          final products = product[index];
          return GridTile(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => ProductDetailScreen(
                                  brand: products.brandName,
                                  imageUrl: products.imageUrl,
                                  price: products.price,
                                )
                              )
                            );
                          },
                          child: Image.network(
                            products.imageUrl, 
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        )
                      ),
                      Positioned(
                        top: 5,
                        left: 5,
                        child: Container(
                          alignment: Alignment.topLeft,
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Theme.of(context).splashColor
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 17),
                              SizedBox(width: 5,),
                              Text(products.rating.toString(),
                              style: TextStyle(color: Colors.yellow, fontSize: 16),),
                            ],
                          ),
                        ),
                      )
                    ]
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ProductDetailScreen(
                          brand: products.brandName,
                          imageUrl: products.imageUrl,
                          price: products.price,
                        )
                      )
                    );
                  },
                  child: Text(
                    products.title, 
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '\$${products.price}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold
                    ), textAlign: TextAlign.start,
                  ),
                )
              ],
            )
          );
        },
      ),
    );
  }
}