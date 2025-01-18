import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../exports.dart';
import 'featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 30;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: itemWidth * .4,
                top: 0,
                child: SvgPicture.asset(
                  Assets.assetsImagesPageViewItem2Logo,
                  fit: BoxFit.fill,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Container(
                  width: itemWidth * .5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          Image.asset(Assets.assetsImagesFeaturedItemBackground)
                              .image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Opacity(
                          opacity: 0.80,
                          child: Text('عروض العيد',
                              style: TextStyles.regular13
                                  .copyWith(color: Colors.white)),
                        ),
                        const Spacer(),
                        Text(
                          'خصم 25%',
                          style:
                              TextStyles.bold19.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        FeaturedItemButton(
                          text: 'تسوق الان',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 18),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
