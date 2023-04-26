import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/theme/app_theme.dart';
import '../utils/routes/app_router.dart';

class AppMainView extends StatelessWidget {
  const AppMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme(theme: ThemeType.dark).getAppTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router(),
    );
  }
}
