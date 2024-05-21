import '../../utils/export_utils.dart';

class AppResponsiveUtils {
  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _textScaler = 0;

  static void init(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    _textScaler = MediaQuery.textScalerOf(context).scale(1);
  }

  static double screenWidth(BuildContext context) {
    if (_screenWidth == 0) {
      init(context);
    }
    return _screenWidth;
  }

  static double screenHeight(BuildContext context) {
    if (_screenHeight == 0) {
      init(context);
    }
    return _screenHeight;
  }

  static double getResponsiveWidth(BuildContext context, double value) {
    return value * (screenWidth(context) / 375); // 375 is the standard width
  }

  static double getResponsiveHeight(BuildContext context, double value) {
    return value * (screenHeight(context) / 812); // 812 is the standard height
  }

  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    // Assuming 375x812 is the standard screen size for reference
    double scaleFactor = screenWidth(context) / 375;
    return (fontSize / _textScaler) * scaleFactor;
  }
}
