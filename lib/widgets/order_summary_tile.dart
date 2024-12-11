import 'package:flutter/material.dart';

class OrderSummaryTile extends StatelessWidget {
  final String orderSummary;

  OrderSummaryTile({required this.orderSummary});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(orderSummary),
      leading: Icon(Icons.receipt),
    );
  }
}
