import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
            color: Theme.of(context).splashColor,
            height: screenHeight * 0.3,
            padding: EdgeInsets.only(
              top: screenHeight * 0.04,
              left: screenWidth * 0.04,
              right: screenWidth * 0.04,
              bottom: screenHeight * 0.05
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View More', 
                        style: TextStyle(
                          fontSize: 16, 
                          color: Colors.grey
                        )
                      )
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: const Color.fromARGB(26, 214, 214, 214),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.grade_outlined, size: 25, color: Colors.white),
                            Text('Best \nOffer', style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.ac_unit, size: 25, color: Colors.white),
                            Text('Women \nshoe', style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenHeight * 0.02,),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shape_line, size: 25, color: Colors.white),
                            Text('Women \nDress', style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,)
                          ]
                        )
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03,),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sports_golf, size: 25, color: Colors.white),
                            Text('Men \nClothes', style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,)
                          ]
                        )
                      ),
                    )
                  ]
                )
              ],
            ),
          );
  }
}