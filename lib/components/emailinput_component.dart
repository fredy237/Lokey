import '../utils/export_utils.dart';

class EmailInputComponent extends StatelessWidget {
  const EmailInputComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final lng = AppLocalizations.of(context);
    final thx = Theme.of(context);
    return SizedBox(
      width: AppResponsiveUtils.getResponsiveWidth(context, 325),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: AppResponsiveUtils.getResponsiveWidth(context, 10),
          ),
          prefixIcon: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) =>
                AppTheme.linearIcon.createShader(bounds),
            child: Icon(
              Icons.mail,
              size: AppResponsiveUtils.getResponsiveFontSize(context, 25),
            ),
          ),
          hintText: lng!.email,
          hintStyle: thx.textTheme.bodyMedium!.copyWith(
            fontSize: AppResponsiveUtils.getResponsiveFontSize(context, 14),
            color: thx.hintColor,
          ),
          enabledBorder: thx.inputDecorationTheme.enabledBorder,
          focusedBorder: thx.inputDecorationTheme.focusedBorder,
          errorBorder: thx.inputDecorationTheme.errorBorder,
          focusedErrorBorder: thx.inputDecorationTheme.focusedErrorBorder,
        ),
      ),
    );
  }
}
