import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../presentation/resources/routes/app_router.gr.dart';
import '../presentation/resources/theme/themes/light_theme.dart';

class MyApp extends StatelessWidget {
  static MyApp instance = MyApp._internal();
  MyApp._internal();
  factory MyApp() => instance;

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        title: 'Task',
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
