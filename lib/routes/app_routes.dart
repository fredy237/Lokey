import '../../utils/export_utils.dart';

class AppRoutes {
  static const String signin = '/signIn';
  static const String signup = '/signUp';
  // static const String loading = '/loading';
  // static const String reset = '/reset';
  // static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signin:
        return MaterialPageRoute(builder: (_) => const SigninScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
/*       case loading:
        return MaterialPageRoute(builder: (_) => const LoadingScreen());
      case reset:
        return MaterialPageRoute(builder: (_) => const ResetScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen()); */
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('404'),
            ),
          ),
        );
    }
  }
}
