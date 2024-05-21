import '../../utils/export_utils.dart';

class SizespaceComponent extends StatelessWidget {
  final double size;
  final bool isHeight;
  const SizespaceComponent({
    super.key,
    required this.size,
    this.isHeight = true,
  });

  @override
  Widget build(BuildContext context) {
    return isHeight
        ? SizedBox(
            height: AppResponsiveUtils.getResponsiveHeight(
              context,
              size,
            ),
          )
        : SizedBox(
            width: AppResponsiveUtils.getResponsiveHeight(
              context,
              size,
            ),
          );
  }
}
