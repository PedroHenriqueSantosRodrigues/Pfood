import 'package:flutter/material.dart';

class MarketsWidgets extends StatefulWidget {
  const MarketsWidgets({super.key});

  @override
  State<MarketsWidgets> createState() => _MarketsWidgetsState();
}

class _MarketsWidgetsState extends State<MarketsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
    child: Center(
      child: Text('Markets'),
    ),);
  }
}