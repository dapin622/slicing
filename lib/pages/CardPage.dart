import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shop/widgets/AppBarWidgets2.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar
    final size = MediaQuery.of(context).size;
    final width = size.width; 
    final height = size.height; 

    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Appbarwidgets2(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                      left: width * 0.02,
                      bottom: height * 0.01,
                    ),
                    child: Text(
                      'Order List',
                      style: TextStyle(
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Box Order 1
                  buildOrderBox(
                    context,
                    width,
                    height,
                    'assets/burger.png',
                    'Burger',
                    'Rp. 35.000',
                  ),

                  // Box Order 2
                  buildOrderBox(
                    context,
                    width,
                    height,
                    'assets/minuman.webp',
                    'cocacola',
                    'Rp. 15.000',
                  ),

                  // Box Order 3
                  buildOrderBox(
                    context,
                    width,
                    height,
                    'assets/burger.png',
                    'burger',
                    'Rp. 35.000',
                  ),

                  // Ringkasan
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.02,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(width * 0.05),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          buildSummaryRow('PPN 10%', 'Rp. 10.000', width),
                          buildSummaryRow('Total', 'Rp. 94.000', width),
                          Divider(color: Colors.black),
                          buildSummaryRow('Total Pembayaran', 'Rp. 100.000', width),
                          SizedBox(height: height * 0.02),

                          // Submit Button
                          ElevatedButton(
                            onPressed: () {
                              // Handle form submission
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.3,
                                vertical: height * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk Box Order
  Widget buildOrderBox(BuildContext context, double width, double height,
      String imagePath, String title, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Container(
        width: width * 0.9,
        height: height * 0.20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                height: height * 0.1,
                width: width * 0.25,
              ),
            ),
            Container(
              width: width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: width * 0.04,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.remove_circle, color: Colors.green, size: width * 0.05),
                      Text('1', style: TextStyle(fontSize: width * 0.04)),
                      Icon(Icons.add_circle, color: Colors.green, size: width * 0.05),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk Ringkasan
  Widget buildSummaryRow(String label, String value, double width) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: width * 0.045,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: width * 0.045,
            ),
          ),
        ],
      ),
    );
  }
}
