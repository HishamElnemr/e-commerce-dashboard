import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fruits_hub_dashboard/core/services/getit_services.dart';
import 'package:fruits_hub_dashboard/core/utils/build_app_bar.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/manager/cubits/add_product_cubit.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/views/widgets/add_product_view_body_bloc_builder.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const routeName = 'add_product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Add Product'),
      body: 
      BlocProvider(
        create:
            (context) => AddProductCubit(
              getIt.get<ImagesRepo>(),
              getIt.get<ProductRepo>(),
            ),
        child: const AddProductViewBodyBlocBuilder(),
      ),
    );
  }
}


