import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidgets extends StatefulWidget {
  const AllStoresWidgets({super.key});

  @override
  State<AllStoresWidgets> createState() => _AllStoresWidgetsState();
}

class _AllStoresWidgetsState extends State<AllStoresWidgets> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [CategoryListWidget()],
              );
  }
} 