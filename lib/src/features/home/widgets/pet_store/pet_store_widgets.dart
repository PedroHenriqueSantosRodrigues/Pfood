import 'package:flutter/material.dart';

class PetStoresWidgets extends StatefulWidget {
  const PetStoresWidgets({super.key});

  @override
  State<PetStoresWidgets> createState() => _PetStoresWidgetsState();
}

class _PetStoresWidgetsState extends State<PetStoresWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
    child: Center(
      child: Text('Pet Stores'),
    ),);
  }
}