import 'dart:io';

import 'package:fruits_hub_dashboard/features/add_product/domain/entities/review_entity.dart';

class AddProductEntityInput {
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
  final List<ReviewEntity> reviews;
  AddProductEntityInput({
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
    required this.reviews,
  });
}
