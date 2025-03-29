import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePageScreens extends StatelessWidget {
  const WelcomePageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: LottieBuilder.asset(
                'assets/lottie/shopping.json',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
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
            ),
            SizedBox(height: 20,),
            Container(
              width: screenWidth * 1.0,
              height: screenHeight * 0.12,
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white, 
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )
                ),
                onPressed: () {}, 
                child: Text('Get Started')
              ),
            )
          ],
        ),
      ),
    );
  }
}