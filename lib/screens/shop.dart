import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';
import '../models/food_shop.dart';
import '../models/food_title.dart';
import 'order.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCard(Food food) {
    Provider.of<FoodShop>(context, listen: false).addItemToCard(food);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'تمت الاضافة بنجاح الي عربة التسوف',
                style: TextStyle(fontFamily: 'MyFonts', color: Colors.brown),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FoodShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'كيف تحب طعامك؟',
                      style: TextStyle(fontSize: 22, fontFamily: 'MyFonts'),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    Expanded(
                      flex: 1,
                      child: OrderPage(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                        flex: 12,
                        child: ListView.builder(
                            itemCount: value.foodShop.length,
                            itemBuilder: (context, index) {
                              Food ecathFood = value.foodShop[index];
                              return FoodTitle(
                                food: ecathFood,
                                icon: Icon(Icons.add),
                                onPressed: () => addToCard(ecathFood),
                              );
                            }))
                  ],
                ),
              ),
            ));
    ;
  }
}
