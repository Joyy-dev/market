import 'package:flutter/material.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';

class HomePageScreens extends StatelessWidget {
  const HomePageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    //final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
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
          Stack(
            children: [
              Container(
                height: screenHeight * 0.4,
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
                        Row(
                          children: [
                            Icon(Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 30,),
                            SizedBox(width: 20,),
                            Icon(Icons.messenger_outline_outlined,
                            color: Colors.white,
                            size: 30,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}