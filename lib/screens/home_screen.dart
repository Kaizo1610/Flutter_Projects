import 'package:flutter/material.dart';
import 'menu_screen.dart';
import 'orders_screen.dart';
import 'table_management_screen.dart';
import 'new_order_screen.dart';
import '../widgets/action_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Management'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButton(
                label: 'Manage Menu',
                icon: Icons.restaurant_menu,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                ),
              ),
              SizedBox(height: 16),
              ActionButton(
                label: 'View Orders',
                icon: Icons.list_alt,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersScreen()),
                ),
              ),
              SizedBox(height: 16),
              ActionButton(
                label: 'Manage Tables',
                icon: Icons.table_bar,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TableManagementScreen()),
                ),
              ),
              SizedBox(height: 16),
              ActionButton(
                label: 'Create New Order',
                icon: Icons.add_box,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewOrderScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
