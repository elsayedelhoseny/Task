class ProductDetails {
  final int id;
  final String title;
  final String photo;
  final String desc;
  final double price;
  final String calories;
  final List<ProductAttribute> attributes;
  final List<dynamic> multiSelectAttributes;

  ProductDetails({
    required this.id,
    required this.title,
    required this.photo,
    required this.desc,
    required this.price,
    required this.calories,
    required this.attributes,
    required this.multiSelectAttributes,
  });

  factory ProductDetails.fromJson({required Map<String,dynamic> json}) {
    return ProductDetails(
      id: json['id'],
      title: json['title'],
      photo: json['photo'],
      desc: json['desc'],
      price: double.parse(json['price']),
      calories: json['calories'],
      attributes: (json['attributes'] as List<dynamic>)
          .map((e) => ProductAttribute.fromJson(e))
          .toList(),
      multiSelectAttributes: json['multi_select_attributes'] ?? [],
    );
  }
}

class ProductAttribute {
  final int id;
  final String name;
  final List<ProductAttributeOption> options;

  ProductAttribute({
    required this.id,
    required this.name,
    required this.options,
  });

  factory ProductAttribute.fromJson(Map<String, dynamic> json) {
    return ProductAttribute(
      id: json['id'],
      name: json['name'],
      options: (json['options']['data'] as List<dynamic>)
          .map((e) => ProductAttributeOption.fromJson(e))
          .toList(),
    );
  }
}

class ProductAttributeOption {
  final int id;
  final String name;
  final double price;

  ProductAttributeOption({
    required this.id,
    required this.name,
    required this.price,
  });

  factory ProductAttributeOption.fromJson(Map<String, dynamic> json) {
    return ProductAttributeOption(
      id: json['id'],
      name: json['name'],
      price: double.parse(json['price']),
    );
  }
}
