import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failures.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_entity_input.dart';

abstract class ProductRepo {
  Future<Either<Failure, void>> addProduct(AddProductEntityInput addProductEntityInput);
}