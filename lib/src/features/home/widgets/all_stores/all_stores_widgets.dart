import 'package:flutter/material.dart';

class AllStoresWidgets extends StatefulWidget {
  const AllStoresWidgets({super.key});

  @override
  State<AllStoresWidgets> createState() => _AllStoresWidgetsState();
}

class _AllStoresWidgetsState extends State<AllStoresWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.red,
      child: Center(
        child: Text('All Stores'),
      ),);
  }
}