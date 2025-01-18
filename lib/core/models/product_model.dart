import 'dart:io';

import 'package:fruits_hub/core/models/review_model.dart';

import '../entites/product_entity.dart';

class ProductModel {
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
  final int sellingCount;

  final num ratingCount = 0;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.name,
    required this.reviews,
    required this.sellingCount,
    required this.description,
    required this.code,
    required this.price,
    required this.image,
    required this.isFeatured,
    required this.expiredMonths,
    this.isOrganic = false,
    required this.quantity,
    required this.calories,
    required this.unitAmount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json['name'],
        description: json['description'],
        code: json['code'],
        price: json['price'],
        image: File(json['imageUrl']),
        isFeatured: json['isFeatured'],
        expiredMonths: json['expiredMonths'],
        isOrganic: json['isOrganic'],
        quantity: json['quantity'],
        calories: json['calories'],
        unitAmount: json['unitAmount'],
        sellingCount: json['sellingCount'],
        reviews: List<ReviewModel>.from(
            json['reviews'].map((x) => ReviewModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'code': code,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expiredMonths': expiredMonths,
      'isOrganic': isOrganic,
      'quantity': quantity,
      'calories': calories,
      'sellingCount': sellingCount,
      'unitAmount': unitAmount,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}
