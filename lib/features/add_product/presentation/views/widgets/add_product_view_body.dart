import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/custom_text_form_field.dart';
import 'package:fruits_hub_dashboard/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_entity_input.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/views/widgets/image_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/views/widgets/is_featured_check_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  late String name, code, description, price;
  bool? isFeatured = false;
  File? fileImage;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 16),
              CustomTextFormField(
                hitText: 'Product Name',
                keyboardType: TextInputType.text,
                onSaved: (p0) {
                  name = p0!;
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hitText: 'Product Price',
                keyboardType: TextInputType.number,
                onSaved: (p0) {
                  price = p0!;
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hitText: 'Product Code',
                keyboardType: TextInputType.text,
                onSaved: (p0) {
                  code = p0!.toLowerCase();
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hitText: 'Product Description',
                keyboardType: TextInputType.text,
                maxLines: 5,
                onSaved: (p0) {
                  description = p0!;
                },
              ),
              const SizedBox(height: 16),
              IsFeaturedCheckBox(
                onChanged: (value) {
                  isFeatured = value;
                },
              ),
              const SizedBox(height: 16),
              ImageField(
                onFileChanged: (image) {
                  fileImage = image;
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                onPressed: () {
                  if (fileImage != null) {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      AddProductEntityInput input = AddProductEntityInput(
                        code: code,
                        description: description,
                        price: price,
                        isFeatured: isFeatured!,
                        image: fileImage!,
                        name: name,
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(errorBarMethod());
                  }
                },
                text: 'Add Product',
              ),
            ],
          ),
        ),
      ),
    );
  }

  SnackBar errorBarMethod() {
    return const SnackBar(content: Text('Please Select Product Image'));
  }
}
