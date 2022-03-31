import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Icon(Icons.closed_caption_disabled_outlined),
                  Text('Restaurant is close now, will open at 9 AM')
                ],
              )
            ),
            Container(
              height: 80,
            ),
            Container(
              height: 80,
              color: Colors.black26,
            ),
            Container(
              height: 100,
            ),
            Container(
              height: 100,
              color: Colors.black26,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            selectedIconTheme: IconThemeData(
              color: Colors.red
            ),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,color: Colors.black26),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,color: Colors.black26),
                  label: 'Cart'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite,color: Colors.black26),
                label: 'Favoutite'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu,color: Colors.black26),
                  label: 'Menu'
              ),


            ]),
      ),
    );
  }
}
