import 'package:flutter/foundation.dart';

enum ProductType { product, rawMaterial, mro }

class ProductModel {
  String id;
  String name;
  String type;
  String unit;
  double price;
  double minStock;
  double stock;
  
  ProductModel({
    required this.id,
    required this.name, 
    required this.type,
    required this.unit, 
    required this.price, 
    required this.minStock,
    required this.stock
  });

factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      // type: ProductType.values[map['type']],
      type: map['type'] ?? '',
      unit: map['unit'] ?? '',
      price: map['price'] ?? 0.0,
      minStock: map['minStock'] ?? 0.0,
      stock: map['stock'] ?? 0.0,
    );
  }

Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      // 'type': type.index,
      'type': type,
      'unit': unit,
      'price': price,
      'minStock': minStock,
      'stock': stock
    };
  }
}

