import 'package:flutter/material.dart';
import 'package:market/screens/feeds_screen.dart';
import 'package:market/screens/notifications_screens.dart';
import 'package:market/screens/profile_screens.dart';
import 'package:market/widget/category_section.dart';
import 'package:market/widget/hero_section.dart';
import 'package:market/widget/product_items.dart';

class HomePageScreens extends StatelessWidget {
  const HomePageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    //final double screenHeight = MediaQuery.of(context).size.height;
    //final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePageScreens()
              )
            );
          }, icon: Icon(Icons.home)),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FeedsScreen()));
            }, 
            icon: Icon(Icons.grid_view_outlined)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const NotificationsScreens()
                )
              );
            }, 
            icon: Icon(Icons.notifications_none_outlined)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProfileScreens()
                )
              );
            }, 
            icon: Icon(Icons.person_2_outlined)
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeroSection(),
          CategorySection(),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 10,
            ),
            child: Text(
              'Today\'s recommendation...',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey
              ), textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              child: ProductItems()
            ),
          )
          
        ],
      ),
    );
  }
} 