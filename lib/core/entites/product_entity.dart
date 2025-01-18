import 'dart:io';

import 'package:fruits_hub/core/entites/review_entity.dart';


class ProductEntity {
  final String name;
  final String description;
  final String code;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expiredMonths;
  final bool isOrganic;
  final int quantity;
  final int calories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.reviews,
    required this.expiredMonths,
    this.isOrganic = false,
    required this.quantity,
    required this.calories,
    required this.unitAmount,
    required this.code,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.imageUrl,
    required this.isFeatured,
  });
}
