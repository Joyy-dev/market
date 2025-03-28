import 'package:flutter/material.dart';

class WelcomePageScreens extends StatelessWidget {
  const WelcomePageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.asset('assets/images/circle.png',
              fit: BoxFit.cover,),
            ),     
            Column(
              children: [
                Text('Market', 
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
                Text('Market in your pocket. Find \n your best outfit here',
                style: TextStyle(
                  fontSize: 16
                ), softWrap: true, textAlign: TextAlign.center,),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
                fixedSize: Size(300, 50)
              ),
              onPressed: () {}, 
              child: Text('Get Started')
            )
          ],
        ),
      ),
    );
  }
}