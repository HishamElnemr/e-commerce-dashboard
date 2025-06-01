import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failures.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_entity_input.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<Either<Failure, void>> addProduct(AddProductEntityInput addProductEntityInput) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

}