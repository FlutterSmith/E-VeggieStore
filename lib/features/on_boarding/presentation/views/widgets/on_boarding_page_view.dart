import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/data/models/page_view_model.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    // List of PageViewModel
    final List<PageViewModel> pages = [
      PageViewModel(
        image: Assets.assetsImagesPageViewItem1Logo,
        backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'مرحبًا بك في ',
              style: TextStyle(
                color: Color(0xFF0C0D0D),
                fontSize: 23,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'HUB',
              style: TextStyle(
                color: Color(0xFFF4A91F),
                fontSize: 23,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Fruit',
              style: TextStyle(
                color: Color(0xFF1B5E37),
                fontSize: 23,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        subTitle:
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        isVisible: true,
      ),
      PageViewModel(
        image: Assets.assetsImagesPageViewItem2Logo,
        backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ابحث وتسوق',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0C0D0D),
                fontSize: 23,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            )
          ],
        ),
        subTitle:
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        isVisible: false,
      ),
    ];

    return PageView(
      controller: pageController,
      children: pages.map((page) {
        return PageViewItem(pageViewModel: page);
      }).toList(),
    );
  }
}
