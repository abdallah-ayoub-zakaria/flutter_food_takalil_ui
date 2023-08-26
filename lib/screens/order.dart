import 'package:flutter/material.dart';

import '../models/orderpage.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List FoodType = [
    'الكل',
    true,
    true,
    'المطبق',
    false,
    false,
    'المطبق',
    false,
    false,
    'المطبق',
    false,
    false,
    'المطبق',
    false,
    false,
    'المطبق',
    false,
    false,
  ];
  void foodType() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey[300],
          height: 55,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Order(
                name: 'الكل',
                colors: true,
                bol: true,
                onTap: () {},
              ),
              Order(
                name: 'المطبق',
                colors: false,
                bol: false,
                onTap: () {},
              ),
              Order(
                name: 'العريكه',
                colors: false,
                bol: false,
                onTap: () {},
              ),
              Order(
                name: 'المعصوب ',
                colors: false,
                bol: false,
                onTap: () {},
              ),
              Order(
                name: 'الحلى',
                colors: false,
                bol: false,
                onTap: () {},
              ),
              Order(
                name: 'المشروبات',
                colors: false,
                bol: false,
                onTap: () {},
              ),
            ],
          )),
    );
  }
}
