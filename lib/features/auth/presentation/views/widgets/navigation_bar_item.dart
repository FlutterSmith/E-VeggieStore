import '../../../../../exports.dart';
import '../../../../home/domain/entites/bottom_navigation_bar_entity.dart';
import '../../../../home/presentation/views/widgets/active_item.dart';
import '../../../../home/presentation/views/widgets/inactive_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isActive,
    required this.bottomNavigationBarEntity,
  });

  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: isActive ? 1.2 : 1.0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutBack,
      child: isActive
          ? ActiveItem(
              image: bottomNavigationBarEntity.activeImage,
              text: bottomNavigationBarEntity.name,
            )
          : InActiveItem(image: bottomNavigationBarEntity.inActiveImage),
    );
  }
}
