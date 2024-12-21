import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entites/product_entity.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());
  final ProductsRepo productsRepo;

  Future<void> getProducts() async {
    emit(ProductsLoading());
    final products = await productsRepo.getProduct();
    products.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (productsData) => emit(ProductsSucess(productsData)),
    );
  }
  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    final products = await productsRepo.getBestSellingProducts();
    products.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (productsData) => emit(ProductsSucess(productsData)),
    );
  }
}
