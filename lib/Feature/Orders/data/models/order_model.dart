class OrderModel {
  final int id;
  final String orderNumber;
  final int countItems;
  final double total;
  final List<OrderItem> items;

  OrderModel({
    required this.id,
    required this.orderNumber,
    required this.countItems,
    required this.total,
    required this.items,
  });

  factory OrderModel.fromJson({required Map<String, dynamic> json}) {
    List<dynamic> itemsJson = json['items'];
    List<OrderItem> items =
        itemsJson.map((item) => OrderItem.fromJson(item)).toList();

    return OrderModel(
      id: json['id'],
      orderNumber: json['order_number'],
      countItems: json['count_items'],
      total: double.parse(json['total']),
      items: items,
    );
  }
}

class OrderItem {
  final int id;
  final String productPhoto;

  OrderItem({
    required this.id,
    required this.productPhoto,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'],
      productPhoto: json['product_photo'],
    );
  }
}
