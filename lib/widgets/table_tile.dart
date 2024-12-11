import 'package:flutter/material.dart';
import '../models/table.dart';

class TableTile extends StatelessWidget {
  final RestaurantTable table;

  TableTile({required this.table});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Table ${table.tableNumber}'),
      trailing: Icon(
        table.isOccupied ? Icons.event_busy : Icons.event_available,
        color: table.isOccupied ? Colors.red : Colors.green,
      ),
    );
  }
}
