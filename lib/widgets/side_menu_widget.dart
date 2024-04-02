import 'package:flutter/material.dart';
import 'package:flutter_fitness_dashboardui/const/constant.dart';
import 'package:flutter_fitness_dashboardui/data/side_menu_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
final data = SideMenuData();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Container(
        child: ListView.builder(
          itemCount: data.menu.length, 
          itemBuilder: (context, index) => buildMenuEntry(data, index),
        ),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        color: isSelected ? selectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Icon(
              data.menu[index].icon,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            data.menu[index].title,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          )
        ],
      ),
        ),
    );
  }
}