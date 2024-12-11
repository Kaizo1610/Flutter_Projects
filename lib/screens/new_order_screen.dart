import 'package:flutter/material.dart';
import '../utils/dummy_data.dart';

class NewOrderScreen extends StatefulWidget {
  @override
  _NewOrderScreenState createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  final List<String> selectedItems = [];
  String selectedTable = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Order'),
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            hint: Text('Select Table'),
            value: selectedTable.isNotEmpty ? selectedTable : null,
            onChanged: (value) {
              setState(() {
                selectedTable = value!;
              });
            },
            items: tables
                .where((table) => !table.isOccupied)
                .map((table) => DropdownMenuItem(
                      value: table.tableNumber,
                      child: Text('Table ${table.tableNumber}'),
                    ))
                .toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(menuItems[index].name),
                  subtitle: Text('\$${menuItems[index].price.toStringAsFixed(2)}'),
                  value: selectedItems.contains(menuItems[index].name),
                  onChanged: (isChecked) {
                    setState(() {
                      if (isChecked == true) {
                        selectedItems.add(menuItems[index].name);
                      } else {
                        selectedItems.remove(menuItems[index].name);
                      }
                    });
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // In a real app, this would save the order to a database.
              if (selectedTable.isNotEmpty && selectedItems.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Order created successfully!')),
                );
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please select table and items.')),
                );
              }
            },
            child: Text('Create Order'),
          ),
        ],
      ),
    );
  }
}
