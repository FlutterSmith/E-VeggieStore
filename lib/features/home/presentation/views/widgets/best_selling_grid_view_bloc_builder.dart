import 'package:flutter/material.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/core/helper/get_dummy_products.dart';
import 'package:fruits_hub/core/widgets/custom_error_widget.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';
import 'package:fruits_hub/exports.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSucess) {
          return BestSellingGridView(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(error: state.errMessage));
        } else {
          return Skeletonizer.sliver(
              enabled: state is ProductsLoading,
              child: BestSellingGridView(
                products: getDummyProductList(),
              ));
        }
      },
    );
  }
}
