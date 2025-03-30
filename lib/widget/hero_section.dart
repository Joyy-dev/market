import 'package:flutter/material.dart';
import 'package:market/widget/search.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.35,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.png'),
                fit: BoxFit.cover,
              )
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 10),
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Find the best \n outfit for you.',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),textAlign: TextAlign.end,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 30,),
                        SizedBox(width: 30,),
                        Icon(Icons.messenger_outline_outlined,
                        color: Colors.white,
                        size: 30,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Search()
            ],
          ),
        )
      ],
    );
  }
}