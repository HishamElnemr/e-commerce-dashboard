import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failures.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fruits_hub_dashboard/core/services/database_services.dart';
import 'package:fruits_hub_dashboard/core/utils/backend_endpoints.dart';
import 'package:fruits_hub_dashboard/features/add_product/data/models/add_product_input_model.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_entity_input.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService databaseService;
  ProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, void>> addProduct(AddProductEntityInput addProductEntityInput) async{
    try {
      await databaseService.addData(
        BackendEndpoints.productsCollection,
        AddProductInputModel.fromEntity(addProductEntityInput).toJson(),
        null,
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to add product: $e'));
    }
    
  }

}