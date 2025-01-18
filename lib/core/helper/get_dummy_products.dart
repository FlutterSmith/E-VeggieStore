import 'package:fruits_hub/core/entites/product_entity.dart';
import 'package:fruits_hub/exports.dart';

ProductEntity getDummyProducts() {
  return ProductEntity(
    reviews: [],
    expiredMonths: 12,
    isOrganic: true,
    quantity: 1,
    calories: 100,
    unitAmount: 1,
    code: '123',
    name: 'Apple',
    description: 'Fresh and juicy apple',
    price: 1.99,
    image: File(''),
    imageUrl: 'https://example.com/images/apple.jpg',
    isFeatured: true,
  );
}

List<ProductEntity> getDummyProductList() {
  return [
    getDummyProducts(),
    ProductEntity(
      reviews: [],
      expiredMonths: 6,
      isOrganic: false,
      quantity: 2,
      calories: 50,
      unitAmount: 1,
      code: '124',
      name: 'Banana',
      description: 'Ripe and sweet banana',
      price: 0.99,
      image: File(''),
      imageUrl: 'https://example.com/images/banana.jpg',
      isFeatured: false,
    ),
    getDummyProducts(),
    ProductEntity(
      reviews: [],
      expiredMonths: 3,
      isOrganic: true,
      quantity: 5,
      calories: 30,
      unitAmount: 1,
      code: '125',
      name: 'Orange',
      description: 'Citrus and tangy orange',
      price: 1.49,
      image: File(''),
      imageUrl: 'https://example.com/images/orange.jpg',
      isFeatured: true,
    ),
    getDummyProducts(),
    getDummyProducts(),
    getDummyProducts(),
  ];
}
