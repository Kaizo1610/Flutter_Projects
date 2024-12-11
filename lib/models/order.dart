class Order {
  final int id;
  final List<String> items;
  final double totalPrice;
  final String tableNumber;

  Order({
    required this.id,
    required this.items,
    required this.totalPrice,
    required this.tableNumber,
  });
}
