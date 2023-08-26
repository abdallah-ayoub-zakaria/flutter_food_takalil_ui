import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  final String name;
  final bool colors, bol;

  final VoidCallback onTap;
  Order(
      {super.key,
      required this.name,
      required this.colors,
      required this.onTap,
      required this.bol});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          name,
          style: TextStyle(
              fontWeight: bol ? FontWeight.bold : FontWeight.normal,
              fontSize: 20,
              fontFamily: 'MyFonts',
              color: colors ? Colors.black : Colors.brown),
        ),
      ),
    );
  }
}
