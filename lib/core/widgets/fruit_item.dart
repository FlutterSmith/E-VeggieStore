import 'package:fruits_hub/core/entites/product_entity.dart';

import '../../exports.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
          ),
          Positioned.fill(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset(
                    Assets.assetsImagesWatermillonTest,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'فراخ',
                  style: TextStyles.medium15.copyWith(
                    color: const Color(0xFF0C0D0D),
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '30جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF4A91F),
                          )),
                      TextSpan(
                          text: '/',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF8C76D),
                          )),
                      TextSpan(
                          text: ' ',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF8C76D),
                          )),
                      TextSpan(
                          text: 'الكيلو',
                          style: TextStyles.bold13.copyWith(
                            color: const Color(0xFFF8C76D),
                          )),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
                trailing: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFF1B5E37),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
