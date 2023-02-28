import 'package:flutter/material.dart';

class DrugStoreWidgets extends StatefulWidget {
  const DrugStoreWidgets({super.key});

  @override
  State<DrugStoreWidgets> createState() => _DrugStoreWidgetsState();
}

class _DrugStoreWidgetsState extends State<DrugStoreWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
    child: Center(
      child: Text('Drug Store'),
    ),);
  }
}