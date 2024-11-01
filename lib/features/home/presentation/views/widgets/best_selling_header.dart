import '../../../../../exports.dart';
import '../../../../best_selling_fruits/presentation/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'الأكثر مبيعًا',
            style: TextStyles.bold16.copyWith(
              color: const Color(0xFF0C0D0D),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(BestSellingView.routeName);
            },
            child: Text(
              'عرض الكل',
              style: TextStyles.regular13.copyWith(
                color: const Color(0xFF949D9E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
