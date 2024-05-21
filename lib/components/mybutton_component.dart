import '../utils/export_utils.dart';

class MyButtonComponent extends StatelessWidget {
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final String labelText;

  const MyButtonComponent({
    Key? key,
    required this.onPressed,
    required this.labelText,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thx = Theme.of(context);

    return Container(
      width: AppResponsiveUtils.getResponsiveHeight(context, 100),
      height: AppResponsiveUtils.getResponsiveHeight(context, 44),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          labelText,
          style: thx.textTheme.bodyMedium!.copyWith(
            color: thx.colorScheme.onPrimary,
            fontSize: AppResponsiveUtils.getResponsiveFontSize(
              context,
              14,
            ),
          ),
        ),
      ),
    );
  }
}
