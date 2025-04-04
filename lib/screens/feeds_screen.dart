import 'package:flutter/material.dart';
import 'package:market/screens/home_page_screens.dart';
import 'package:market/screens/notifications_screens.dart';
import 'package:market/screens/profile_screens.dart';
import 'package:market/widget/search.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actionsPadding: EdgeInsets.only(
          right: 10,
          left: 10,
          bottom: 8
        ),
        actions: [
          Expanded(child: Search()),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 30)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline_sharp, color: Colors.white, size: 30)),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePageScreens()
              )
            );
          }, icon: Icon(Icons.home_outlined)),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => FeedsScreen()
              ));
            }, 
            icon: Icon(Icons.grid_view_rounded)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NotificationsScreens()));
            }, 
            icon: Icon(Icons.notifications_outlined)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfileScreens()));
            }, 
            icon: Icon(Icons.person_2_outlined)
          )
        ],
      ),
      body: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Update',
              style: TextStyle(
                fontSize: 20, 
                color: Colors.white
              ),
            ),
            Text(
              'Explore',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}