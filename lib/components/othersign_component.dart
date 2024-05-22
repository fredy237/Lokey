import '../utils/export_utils.dart';

class OtherSignComponent extends StatelessWidget {
  const OtherSignComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final thx = Theme.of(context);
    return SizedBox(
      width: AppResponsiveUtils.getResponsiveWidth(context, 325),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: AppResponsiveUtils.getResponsiveWidth(context, 145),
            height: AppResponsiveUtils.getResponsiveHeight(context, 40),
            decoration: BoxDecoration(
              gradient: AppTheme.linearWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton.icon(
              icon: Icon(
                Icons.facebook,
                color: thx.colorScheme.tertiary,
                size: AppResponsiveUtils.getResponsiveFontSize(context, 25),
              ),
              onPressed: () {},
              label: Text(
                "Facebook",
                style: thx.textTheme.bodyMedium!.copyWith(
                  fontSize:
                      AppResponsiveUtils.getResponsiveFontSize(context, 14),
                ),
              ),
            ),
          ),
          Container(
            width: AppResponsiveUtils.getResponsiveWidth(context, 145),
            height: AppResponsiveUtils.getResponsiveHeight(context, 40),
            decoration: BoxDecoration(
              gradient: AppTheme.linearWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton.icon(
              icon: FaIcon(
                FontAwesomeIcons.google,
                size: AppResponsiveUtils.getResponsiveFontSize(context, 20),
                color: thx.colorScheme.error,
              ),
              onPressed: () {},
              label: Text(
                "Google",
                style: thx.textTheme.bodyMedium!.copyWith(
                  fontSize:
                      AppResponsiveUtils.getResponsiveFontSize(context, 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
