import 'package:flutter/material.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/data/models/page_view_model.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../constants.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.pageViewModel});

  final PageViewModel pageViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(pageViewModel.backgroundImage,
                    fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  pageViewModel.image,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Prefs.setBool(kIsOnBoardingViewSeen, true);

                  Navigator.of(context).pushReplacementNamed(
                    LoginView.routeName,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Visibility(
                    visible: pageViewModel.isVisible,
                    child: const Text(
                      'تخط',
                      style: TextStyle(
                        color: Color(0xFF949D9E),
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        pageViewModel.title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            pageViewModel.subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF4E5556),
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
