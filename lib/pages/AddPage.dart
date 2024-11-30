import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shop/widgets/TambahDataWidgets.dart';
import 'package:food_shop/widgets/AppBarWidgets2.dart';

class Addpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Appbarwidgets2(),

              // Button ADD
              Row(
                children: [
                  ElevatedButton(
                    child: Row(
                      children: [
                        Text(
                          'ADD',
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: width * 0.05,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TambahDataWidgets(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(height: height * 0.02),

              // Header List
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Photo", style: TextStyle(fontSize: width * 0.04)),
                    Text("Nama Produk", style: TextStyle(fontSize: width * 0.04)),
                    Text("Harga", style: TextStyle(fontSize: width * 0.04)),
                    Text("Aksi", style: TextStyle(fontSize: width * 0.04)),
                  ],
                ),
              ),
              Divider(color: Colors.black),

              
              buildProductCard(
                  width, height, 
                  'assets/burger.png', 'Burger', 'Rp. 30.000'
                  
                  ),

              Divider(color: Colors.black),
              buildProductCard(
                  width, height, 
                  'assets/minuman.webp', 'cocacola', 'Rp. 15.000'
                  
                  ),
             
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membuat kotak produk
  Widget buildProductCard(
      double width, double height, String imagePath, String title, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Container(
        width: double.infinity,
        height: height * 0.15,
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
            // Gambar Produk
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                height: height * 0.12,
                width: width * 0.3,
                fit: BoxFit.cover,
              ),
            ),
            // Detail Produk
            Container(
              width: width * 0.6,
              padding: EdgeInsets.all(width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        price,
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                      Icon(Icons.delete, color: Colors.red, size: width * 0.05),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
