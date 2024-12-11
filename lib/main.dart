import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(RestaurantManagementApp());
}

// ignore: use_key_in_widget_constructors
class RestaurantManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Management System',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}
