import 'package:flutter/material.dart';
import 'package:market/widget/hero_section.dart';

class HomePageScreens extends StatelessWidget {
  const HomePageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    //final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.grid_view_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeroSection(),  
          Container()
        ],
      ),
    );
  }
}