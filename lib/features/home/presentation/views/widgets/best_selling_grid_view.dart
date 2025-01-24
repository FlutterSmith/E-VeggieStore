import 'package:fruits_hub/core/entites/product_entity.dart';
import 'package:fruits_hub/exports.dart';

import '../../../../../core/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key, required this.products});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
      ),
      itemBuilder: (context, index) {

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: FruitItem(
            productEntity: products[index]
            ,
            
          ),
        );
      },
    );
  }
}
