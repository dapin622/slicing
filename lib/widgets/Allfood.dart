import 'package:flutter/material.dart';

class Allfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFoodCard(
                context, 'assets/burger.png', 'Burger', 35000),

              buildFoodCard(
                context, 'assets/burger.png', 'Burger', 35000),

            ],
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFoodCard(
                context, 'assets/burger.png', 'Burger', 35000),

              buildFoodCard(
                context, 'assets/burger.png', 'Burger', 35000),

            ],
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFoodCard(
                context, 'assets/burger.png', 'Burger', 35000),

              buildFoodCard(
                context, 'assets/burger.png', 'Burger', 35000),

            ],
          ),
        ],
      ),
    );
  }

  Widget buildFoodCard(BuildContext context, String imagePath, String title, int price) {

    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.4; 
    final cardHeight = cardWidth * 1.3; 
    final fontSizeTitle = cardWidth * 0.1; 
    final fontSizePrice = cardWidth * 0.08;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: cardHeight * 0.65, 
                child: Image.asset(imagePath),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp. $price',
                    style: TextStyle(
                      fontSize: fontSizePrice,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: const Color.fromARGB(217, 227, 111, 10),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
