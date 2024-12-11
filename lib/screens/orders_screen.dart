import 'package:flutter/material.dart';
import '../widgets/order_summary_tile.dart';

class OrdersScreen extends StatelessWidget {
  final List<String> orders = [
    'Order #1: Pizza x2, Burger x1',
    'Order #2: Pasta x3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrderSummaryTile(orderSummary: orders[index]);
        },
      ),
    );
  }
}
