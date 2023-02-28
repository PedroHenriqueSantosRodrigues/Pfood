import 'package:flutter/material.dart';

class DrinkStoresWidgets extends StatefulWidget {
  const DrinkStoresWidgets({super.key});

  @override
  State<DrinkStoresWidgets> createState() => _DrinkStoresWidgetsState();
}

class _DrinkStoresWidgetsState extends State<DrinkStoresWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
    child: Center(
      child: Text('Drink Stores'),
    ),);
  }
}