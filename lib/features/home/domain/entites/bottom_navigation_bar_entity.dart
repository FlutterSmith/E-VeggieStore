import 'package:fruits_hub/exports.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.name,
      required this.activeImage,
      required this.inActiveImage});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          name: 'الرئيسية',
          activeImage: Assets.assetsImagesHomeActive,
          inActiveImage: Assets.assetsImagesHome),
      BottomNavigationBarEntity(
          name: 'المنتجات',
          activeImage: Assets.assetsImagesItemActive,
          inActiveImage: Assets.assetsImagesItem),
      BottomNavigationBarEntity(
          name: 'سلة التسوق',
          activeImage: Assets.assetsImagesShoppingCartActive,
          inActiveImage: Assets.assetsImagesShoppingCart),
      BottomNavigationBarEntity(
          name: 'حسابي',
          activeImage: Assets.assetsImagesUserActive,
          inActiveImage: Assets.assetsImagesUser),
    ];
