import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/helper/build_bar.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_modal_progress_hud.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/manager/cubits/add_product_cubit.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/manager/cubits/add_product_states.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/views/widgets/add_product_view_body.dart';

class AddProductViewBodyBlocBuilder extends StatelessWidget {
  const AddProductViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductStates>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          buildSnackBar(context, 'Product added successfully');
        } else if (state is AddProductFailure) {
          buildSnackBar(context, 'Failed to add product');
        }
      },
      builder: (context, state) {
        return CustomModalProgressHUD(
          isLoading: state is AddProductLoading,
          child: const AddProductViewBody(),
        );
      },
    );
  }
}
