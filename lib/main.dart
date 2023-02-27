import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/dashboard/views/pages/dashboard_page.dart';
import 'package:flutter_application_1/src/features/home/view/pages/home_page.dart';

void main() {
  runApp(const PfoodApp());
}

class PfoodApp extends StatelessWidget {
  const PfoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pfood',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const DashBoardPage(),
    );
  }
}