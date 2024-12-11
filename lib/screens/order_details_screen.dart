import 'package:flutter/material.dart';
import '../models/order.dart';
import '../themes/app_themes.dart';

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  const OrderDetailsScreen({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.lightTheme,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order #${order.id} Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Table: ${order.tableNumber}', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              Text('Items:', style: Theme.of(context).textTheme.titleLarge),
              ...order.items.map((item) => Text(item, style: Theme.of(context).textTheme.bodyMedium)),
              SizedBox(height: 16),
              Text('Total Price: \$${order.totalPrice.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}