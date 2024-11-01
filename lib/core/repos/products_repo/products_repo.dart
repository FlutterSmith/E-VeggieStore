import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entites/product_entity.dart';
import 'package:fruits_hub/core/errors/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductEntity>>> getProduct();
    Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();

}
