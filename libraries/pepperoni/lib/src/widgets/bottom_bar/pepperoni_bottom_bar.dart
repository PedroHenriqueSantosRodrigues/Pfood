// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pepperoni/src/widgets/bottom_bar/pepperoni_bottom_bar_item.dart';

class PepperoniBottomBar extends StatefulWidget {
  final List<PepperoniBottomBarItem> Items;
  final void Function(int index) onIndexSelected;
  const PepperoniBottomBar({
    Key? key,
    required this.Items,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  State<PepperoniBottomBar> createState() => _PepperoniBottomBarState();
}

class _PepperoniBottomBarState extends State<PepperoniBottomBar> {
  int selected = 0; 

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.from(
      widget.Items.map((item) => BottomNavigationBarItem(
        icon: PepperoniIconBar(
          icon: item.icon, countBadge: item.countBadge),
           label: item.label,
            activeIcon: PepperoniIconBar(icon : item.activeIcon, countBadge: item.countBadge,))
    )),
    selectedItemColor: Colors.black87,
    unselectedItemColor: Colors.black38,
    showUnselectedLabels: true,
    currentIndex: selected,
    onTap: (index) => {
      widget.onIndexSelected(index),
      setState((){
        selected = index;
      })
    },
    );}
}

class PepperoniIconBar extends StatelessWidget {
  final IconData icon;
  final int countBadge;
  const PepperoniIconBar({super.key, required this.icon, required this.countBadge});

  @override
  Widget build(BuildContext context) {
    if (countBadge > 0){
      return Stack(
        clipBehavior: Clip.none,
        children: [Icon(icon),
        Positioned(
          right: -5,
          top: -5,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 8,
            child: Text(
              '$countBadge',
               style: const TextStyle(color: Colors.white,fontSize: 10),),
          ))],
      );
    }

    return Icon(icon);
  }
}