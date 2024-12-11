import '../models/menu_item.dart';
import '../models/order.dart';
import '../models/table.dart';

final List<MenuItem> menuItems = [
  MenuItem(name: 'Pizza', price: 12.99),
  MenuItem(name: 'Burger', price: 8.99),
  MenuItem(name: 'Pasta', price: 10.49),
];

final List<RestaurantTable> tables = [
  RestaurantTable(tableNumber: '1'),
  RestaurantTable(tableNumber: '2', isOccupied: true),
  RestaurantTable(tableNumber: '3'),
];

final List<Order> orders = [
  Order(id: 1, items: ['Pizza', 'Burger'], totalPrice: 21.98, tableNumber: '2'),
];
