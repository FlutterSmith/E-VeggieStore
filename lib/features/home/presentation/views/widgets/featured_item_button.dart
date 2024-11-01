import '../../../../../exports.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton(
      {super.key, required this.text, required this.onPressed});
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FittedBox(
              child: Text(text,
                  style: const TextStyle(
                    color: Color(0xFF1B5E37),
                    fontSize: 13,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                  )),
            ),
          )),
    );
  }
}
