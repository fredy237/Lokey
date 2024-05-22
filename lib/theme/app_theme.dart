import '../utils/export_utils.dart';

class AppTheme {
  static LinearGradient linear = LinearGradient(colors: [
    HexColor("#E4D28A"),
    HexColor("#C6A41B"),
  ]);
  static const LinearGradient linearWhite = LinearGradient(colors: [
    Colors.white12,
    Colors.white,
  ]);
  static LinearGradient linearIcon = LinearGradient(colors: [
    HexColor("#C6A41B"),
    HexColor("#E4D28A"),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static final Color _primary = HexColor("#C6A41B");
  static final Color _secondary = HexColor("#E4D28A");
  static const Color _dangerColor = Colors.red;
  static const Color _facebColor = Color.fromARGB(255, 2, 75, 134);
  static const Color _disabledColor = Color(0xFFD0D5DD);
  static const Color _inputDisabledColor = Color(0xFF667084);
  static const Color _whiteColor = Colors.white;
  static const Color _blackColor = Colors.black;

  static const TextTheme _textTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Viga',
      fontSize: 40,
      letterSpacing: .5,
      color: _blackColor,
    ),
    titleMedium: TextStyle(
      fontFamily: 'PoetsenOne',
      fontSize: 20,
      height: 5,
      fontWeight: FontWeight.w700,
      color: _blackColor,
    ),
    titleSmall: TextStyle(
      fontFamily: 'PoetsenOne',
      fontSize: 16,
      height: 5,
      fontWeight: FontWeight.w500,
      color: _blackColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      letterSpacing: .5,
      color: _blackColor,
      fontWeight: FontWeight.w800,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 12,
      letterSpacing: .5,
      height: 1.2,
      color: _blackColor,
    ),
  );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    border: const OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: _disabledColor,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _primary,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: _dangerColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: _dangerColor,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  static final TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(0),
      foregroundColor: _primary,
      textStyle: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        letterSpacing: .5,
        color: _primary,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: _primary,
      disabledColor: _disabledColor,
      dividerColor: _blackColor,
      hintColor: _inputDisabledColor,
      colorScheme: const ColorScheme.light(
        error: _dangerColor,
        tertiary: _facebColor,
      ),
      focusColor: _secondary,
      textTheme: _textTheme,
      inputDecorationTheme: _inputDecorationTheme,
      scaffoldBackgroundColor: _whiteColor,
      elevatedButtonTheme: _elevatedButtonThemeData,
      textButtonTheme: _textButtonThemeData,
    );
  }
}
