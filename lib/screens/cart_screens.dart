import 'package:flutter/material.dart';

class CartScreens extends StatelessWidget {
  const CartScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('name'),
          Text('Empty Cart 😞',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor
          ),),
          Text('Go to home explore our interesting\nproducts and add to cart.'),
          SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),
            onPressed: () {}, 
            child: Text('Start Shopping')
          )
        ],
      ),
    );
  }
}