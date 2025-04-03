import 'package:flutter/material.dart';
import 'package:market/screens/home_page_screens.dart';
import 'package:market/screens/notifications_screens.dart';
import 'package:market/widget/search.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePageScreens()
                )
              );
            }, 
            icon: Icon(Icons.home_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.grid_view_outlined)),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NotificationsScreens()));
            }, 
            icon: Icon(Icons.notifications_none_outlined)
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfileScreens()));
            }, 
            icon: Icon(Icons.person)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 420,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png',),
                      fit: BoxFit.cover,
                    )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                    right: 10,
                    left: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Search()),
                      IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined, size: 35, color: Colors.white,),),
                      IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline, size: 35, color: Colors.white,)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 130,
                    left: 100
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/profile.png',
                        width: 200,
                        height: 200,
                      ),
                      Text('Lady Diamond', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                      Text('@ladydiamond', style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'ACCOUNT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ), textAlign: TextAlign.start,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.health_and_safety_sharp
                    ),
                    title: Text('Wishlist', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Lorem ipsum Dotor sit Amet'),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.remove_red_eye_outlined
                    ),
                    title: Text('Last Seen', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Lorem ipsum Dotor sit Amet'),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.health_and_safety_sharp
                    ),
                    title: Text('Wishlist', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Lorem ipsum Dotor sit Amet'),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined
                    ),
                    title: Text('Orders', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Lorem ipsum Dotor sit Amet'),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.wallet_giftcard_sharp
                    ),
                    title: Text('Wallet', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Lorem ipsum Dotor sit Amet'),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined
                    ),
                    title: Text('Addresses', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Lorem ipsum Dotor sit Amet'),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('SETTINGS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}