import 'package:flutter/material.dart';

import 'food.dart';

class FoodShop extends ChangeNotifier {
  final List<Food> _shop = [
    Food(
      name: 'عريكه تكاليل',
      price: '24\$',
      imagePath: 'assets/1.jpg',
    ),
    Food(
      name: 'مالح شدر ',
      price: '15\$',
      imagePath: 'assets/2.jpg',
    ),
    Food(
      name: 'مالح فيتا ',
      price: ' 13\$',
      imagePath: 'assets/4.jpg',
    ),
    Food(
      name: 'ثلاثة جبن',
      price: ' 14\$',
      imagePath: 'assets/5.jpg',
    ),
    Food(
      name: 'سبانخ',
      price: ' 15\$',
      imagePath: 'assets/5.jpg',
    ),
    Food(
      name: 'تونة',
      price: ' 14\$',
      imagePath: 'assets/4.jpg',
    ),
    Food(
      name: 'تفاح وقرفة',
      price: ' 15\$',
      imagePath: 'assets/5.jpg',
    ),
    Food(
      name: 'حالي جبن',
      price: ' 13\$',
      imagePath: 'assets/4.jpg',
    ),
  ];
  List<Food> _userCard = [];
  List<Food> get foodShop => _shop;
  List<Food> get userCard => _userCard;
  void addItemToCard(Food food) {
    _userCard.add(food);
    notifyListeners();
  }

  void removeItemFormCard(Food food) {
    _userCard.remove(food);
    notifyListeners();
  }
}
