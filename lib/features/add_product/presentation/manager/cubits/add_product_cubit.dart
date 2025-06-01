import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_entity_input.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/manager/cubits/add_product_states.dart';

class AddProductCubit extends Cubit<AddProductStates> {
  AddProductCubit(this.imagesRepo, this.productRepo)
    : super(AddProductInitial());
  final ImagesRepo imagesRepo;
  final ProductRepo productRepo;
  Future<void> addProduct(AddProductEntityInput addProductEntityInput) async {
    emit(AddProductLoading());
    var result = await imagesRepo.uploadImage(addProductEntityInput.image);

    result.fold(
      (failure) {
        emit(AddProductFailure(message: failure.message));
      },
      (imageUrl) async {
        addProductEntityInput.imageUrl = imageUrl;
        var productResult = await productRepo.addProduct(addProductEntityInput);
        productResult.fold(
          (failure) {
            emit(AddProductFailure(message: failure.message));
          },
          (_) {
            emit(AddProductSuccess());
          },
        );
      },
    );
  }
}
