import 'package:flutter/material.dart';
import 'package:splash/screens/cart.dart';
import 'package:splash/screens/shop.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 0;
  void cont(index) {
    setState(() {
      _selectindex = index;
    });
  }

  final List<Widget> page = [
    ShopPage(),
    CardPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            'تكاليل',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'MyFonts'),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/logo.jpg'),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: Drawer(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            image: DecorationImage(
                                image: AssetImage('assets/logo.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ListTile(
                        title: Text(
                          'Home',
                          style: TextStyle(fontSize: 20),
                        ),
                        leading: Icon(
                          Icons.home,
                          color: Colors.brown,
                        ),
                      ),
                      SizedBox(),
                      ListTile(
                        title: Text(
                          'About',
                          style: TextStyle(fontSize: 20),
                        ),
                        leading: Icon(
                          Icons.help,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      'Log Out',
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          width: 190,
          backgroundColor: Colors.grey[400]),
      backgroundColor: Colors.grey[300],
      body: page[_selectindex],
      bottomNavigationBar: MyHomePage(
        onTabChange: (index) => cont(index),
      ),
    );
  }
}
