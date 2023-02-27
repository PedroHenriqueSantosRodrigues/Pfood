import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/home/view/pages/home_page.dart';
import 'package:flutter_application_1/src/features/order/views/pages/order_page.dart';
import 'package:flutter_application_1/src/features/profile/views/pages/profile_page.dart';
import 'package:flutter_application_1/src/features/search/views/pages/search_page.dart';
import 'package:pepperoni/pepperoni.dart';
class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final pageController = PageController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
        HomePage(),
        SearchPage(),
        OrderPage(),
        ProfilePage()
      ],),
      bottomNavigationBar: PepperoniBottomBar(
        onIndexSelected: (index) => pageController.jumpToPage(index),
        Items: [
        PepperoniBottomBarItem(icon: Icons.home_outlined,activeIcon: Icons.home_filled, label: 'Inicio'),
        PepperoniBottomBarItem(icon: Icons.search_outlined,activeIcon: Icons.search_off_sharp, label: 'Pesquisa'),
        PepperoniBottomBarItem(icon: Icons.folder_copy_outlined,activeIcon: Icons.folder_copy_rounded, label: 'Pedidos', countBadge: 2),
        PepperoniBottomBarItem(icon: Icons.person_outline,activeIcon: Icons.person, label: 'Perfil')])
    );
  }
}