import '../utils/export_utils.dart';

class PasswordInputComponent extends StatelessWidget {
  const PasswordInputComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final lng = AppLocalizations.of(context);
    final thx = Theme.of(context);
    return SizedBox(
      width: AppResponsiveUtils.getResponsiveWidth(context, 325),
      child: BlocBuilder<ToggleButtonBloc, ToggleButtonState>(
        builder: (context, state) {
          return TextField(
            keyboardType: TextInputType.text,
            obscureText: (state as TogglePassInitialState).isShow,
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
                  Icons.lock,
                  size: AppResponsiveUtils.getResponsiveFontSize(context, 25),
                ),
              ),
              hintText: lng!.password,
              hintStyle: thx.textTheme.bodyMedium!.copyWith(
                fontSize: AppResponsiveUtils.getResponsiveFontSize(context, 14),
                color: thx.hintColor,
              ),
              suffixIcon: IconButton(
                onPressed: () =>
                    context.read<ToggleButtonBloc>().add(TogglePasswordEvent()),
                icon: FaIcon(
                  state.isShow
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                  color: thx.disabledColor,
                ),
              ),
              enabledBorder: thx.inputDecorationTheme.enabledBorder,
              focusedBorder: thx.inputDecorationTheme.focusedBorder,
              errorBorder: thx.inputDecorationTheme.errorBorder,
              focusedErrorBorder: thx.inputDecorationTheme.focusedErrorBorder,
            ),
          );
        },
      ),
    );
  }
}
