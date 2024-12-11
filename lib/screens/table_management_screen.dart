import 'package:flutter/material.dart';
import '../widgets/table_tile.dart';
import '../utils/dummy_data.dart';

class TableManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Management'),
      ),
      body: ListView.builder(
        itemCount: tables.length,
        itemBuilder: (context, index) {
          return TableTile(table: tables[index]);
        },
      ),
    );
  }
}
