import 'dart:io';

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
  AddProductEntityInput({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.image,
    required this.isFeatured,
    required this.expiresInMonths,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
  });
}
