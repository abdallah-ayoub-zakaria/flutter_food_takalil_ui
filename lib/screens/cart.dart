import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';
import '../models/food_shop.dart';
import '../models/food_title.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  void removeFormCard(Food food) {
    Provider.of<FoodShop>(context, listen: false).removeItemFormCard(food);
  }

  void payNow() {}
  @override
  Widget build(BuildContext context) {
    return Consumer<FoodShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'سلة المشتريات',
                      style: TextStyle(
                          fontFamily: 'MyFonts',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCard.length,
                            itemBuilder: (context, index) {
                              Food eachFood = value.userCard[index];
                              return FoodTitle(
                                  food: eachFood,
                                  onPressed: () => removeFormCard(eachFood),
                                  icon: Icon(Icons.delete));
                            })),
                    GestureDetector(
                      onTap: payNow,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.brown),
                        child: Center(
                          child: Text(
                            'بطاقة الدفع',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'MyFonts',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
