import '../utils/export_utils.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lng = AppLocalizations.of(context);
    final thx = Theme.of(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssetsUtils.background,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppResponsiveUtils.getResponsiveWidth(context, 20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizespaceComponent(size: 40),
                  Image.asset(
                    AppAssetsUtils.loke,
                    height:
                        AppResponsiveUtils.getResponsiveHeight(context, 170),
                    width: AppResponsiveUtils.getResponsiveWidth(context, 220),
                    fit: BoxFit.cover,
                  ),
                  GradientTextComponent(
                    text: lng!.headerTitle,
                    gradient: AppTheme.linear,
                    style: thx.textTheme.titleLarge!.copyWith(
                      fontSize:
                          AppResponsiveUtils.getResponsiveFontSize(context, 40),
                    ),
                  ),
                  Text(
                    lng.headerSub,
                    style: thx.textTheme.bodyMedium!.copyWith(
                      fontSize:
                          AppResponsiveUtils.getResponsiveFontSize(context, 14),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizespaceComponent(size: 20),
                  Text(
                    lng.titleLogin,
                    style: thx.textTheme.titleMedium!.copyWith(
                      fontSize:
                          AppResponsiveUtils.getResponsiveFontSize(context, 20),
                    ),
                  ),
                  const SizespaceComponent(size: 15),
                  const EmailInputComponent(),
                  const SizespaceComponent(size: 10),
                  const PasswordInputComponent(),
                  const SizespaceComponent(size: 23),
                  Text(
                    lng.otherSign,
                    style: thx.textTheme.bodyMedium!.copyWith(
                      fontSize:
                          AppResponsiveUtils.getResponsiveFontSize(context, 14),
                    ),
                  ),
                  const SizespaceComponent(size: 15),
                  SizedBox(
                    width: AppResponsiveUtils.getResponsiveWidth(context, 325),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(
                            Icons.facebook,
                            color: thx.colorScheme.tertiary,
                            size: AppResponsiveUtils.getResponsiveFontSize(
                                context, 25),
                          ),
                          onPressed: () {},
                          label: Text(
                            "Facebook",
                            style: thx.textTheme.bodyMedium!.copyWith(
                              fontSize:
                                  AppResponsiveUtils.getResponsiveFontSize(
                                      context, 14),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: thx.colorScheme.onPrimary,
                            shadowColor: thx.dividerColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: thx.disabledColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            size: AppResponsiveUtils.getResponsiveFontSize(
                                context, 20),
                            color: thx.colorScheme.error,
                          ),
                          onPressed: () {},
                          label: Text(
                            "Google",
                            style: thx.textTheme.bodyMedium!.copyWith(
                              fontSize:
                                  AppResponsiveUtils.getResponsiveFontSize(
                                      context, 14),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                              AppResponsiveUtils.getResponsiveWidth(
                                  context, 145),
                              AppResponsiveUtils.getResponsiveHeight(
                                  context, 40),
                            ),
                            backgroundColor: thx.colorScheme.onPrimary,
                            shadowColor: thx.dividerColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: thx.disabledColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizespaceComponent(size: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      lng.textbtnLog,
                      style: TextStyle(
                        fontSize: AppResponsiveUtils.getResponsiveFontSize(
                            context, 14),
                      ),
                    ),
                  ),
                  MyButtonComponent(
                    onPressed: () {},
                    gradient: AppTheme.linear,
                    labelText: lng.btnlogin,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
