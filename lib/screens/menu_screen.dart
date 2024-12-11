import 'package:flutter/material.dart';
import '../models/menu_item.dart';
import '../widgets/menu_item_tile.dart';

class MenuScreen extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(name: 'Pizza', price: 12.99),
    MenuItem(name: 'Burger', price: 8.99),
    MenuItem(name: 'Pasta', price: 10.49),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return MenuItemTile(menuItem: menuItems[index]);
        },
      ),
    );
  }
}
