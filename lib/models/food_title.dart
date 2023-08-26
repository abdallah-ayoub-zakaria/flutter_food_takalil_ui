import 'package:flutter/material.dart';
import 'package:splash/models/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;
  final Widget icon;
  void Function()? onPressed;
  FoodTitle(
      {super.key,
      required this.food,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(
          food.name,
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'MyFonts',
          ),
        ),
        subtitle: Text(food.price),
        leading: Container(
          width: 100,
          height: 150,
          child: Image.asset(
            food.imagePath,
            fit: BoxFit.cover,
          ),
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
