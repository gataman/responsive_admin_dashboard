import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/theme/app_theme.dart';
import '../utils/routes/app_router.dart';

class AppMainView extends StatelessWidget {
  AppMainView({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme(theme: ThemeType.dark).getAppTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
