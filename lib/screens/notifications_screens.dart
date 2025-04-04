import 'package:flutter/material.dart';
import 'package:market/screens/feeds_screen.dart';
import 'package:market/screens/home_page_screens.dart';
import 'package:market/screens/profile_screens.dart';
import 'package:market/widget/search.dart';

class NotificationsScreens extends StatelessWidget {
  const NotificationsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actionsPadding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 5
        ),
        actions: [
          Expanded(child: Search()),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket_outlined, color: Colors.white, size: 25)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline, color: Colors.white, size: 25)),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePageScreens()));
            }, 
            icon: Icon(Icons.home_outlined)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FeedsScreen()));
            }, 
            icon: Icon(Icons.grid_view_outlined)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NotificationsScreens()));
            }, icon: Icon(Icons.notifications)),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfileScreens()));
            }, 
            icon: Icon(Icons.person_3_outlined)
          ),
        ],
      ),

      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.blur_circular_outlined),
            title: Text('Product Promo', style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).splashColor),),
            subtitle: Text('Lorem ipsum Dotor sit Amet', style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outlined),
            title: Text('Market Info', style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).splashColor),),
            subtitle: Text('Lorem ipsum Dotor sit Amet', style: TextStyle(color: Colors.grey)),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('ORDERS STATUS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 18),),
          )
        ],
      ),
    );
  }
}