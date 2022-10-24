import 'package:auto_route/auto_route.dart';
import 'package:upwork_task/presentation/screens/login/login_screen.dart';
import 'package:upwork_task/presentation/screens/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: [
    AutoRoute(page: SplashScreen, path: "/splash", initial: true),
    AutoRoute(
      page: LoginScreen,
      path: "/login",
    ),
  ],
)
class $AppRouter {}
