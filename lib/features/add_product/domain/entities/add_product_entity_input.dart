import 'dart:io';

class AddProductEntityInput {
  final String name;
  final num price;
  final String code;
  final String description;
  final File image;
  final String? imageUrl;
  final bool isFeatured;
  const AddProductEntityInput({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.image,
    required this.isFeatured,
    this.imageUrl
  });
}
