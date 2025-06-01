import 'dart:io';

import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_entity_input.dart';

class AddProductInputModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final File image;
  String? imageUrl;
  final bool isFeatured;
  AddProductInputModel({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.image,
    required this.isFeatured,
    this.imageUrl,
  });

  factory AddProductInputModel.fromEntity(
    AddProductEntityInput addProductEntityInput,
  ) {
    return AddProductInputModel(
      name: addProductEntityInput.name,
      price: addProductEntityInput.price,
      code: addProductEntityInput.code,
      description: addProductEntityInput.description,
      image: addProductEntityInput.image,
      isFeatured: addProductEntityInput.isFeatured,
      imageUrl: addProductEntityInput.imageUrl,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'code': code,
      'description': description,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
    };
  }
}
