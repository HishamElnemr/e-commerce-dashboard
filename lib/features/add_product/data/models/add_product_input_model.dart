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
  final int expiresInMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num averageRating = 0.0;
  final num ratingCount = 0;
  AddProductInputModel({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.image,
    required this.isFeatured,
    required this.expiresInMonths,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
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
      expiresInMonths: addProductEntityInput.expiresInMonths,
      isOrganic: addProductEntityInput.isOrganic,
      numberOfCalories: addProductEntityInput.numberOfCalories,
      unitAmount: addProductEntityInput.unitAmount,
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
      'expiresInMonths': expiresInMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
    };
  }
}
