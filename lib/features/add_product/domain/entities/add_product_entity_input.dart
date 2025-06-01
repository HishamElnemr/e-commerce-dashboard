import 'dart:io';

class AddProductEntityInput {
  final String name;
  final num price;
  final String code;
  final String description;
  final File image;
  String? imageUrl;
  final bool isFeatured;
  AddProductEntityInput({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.image,
    required this.isFeatured,
    this.imageUrl,
  });
}
