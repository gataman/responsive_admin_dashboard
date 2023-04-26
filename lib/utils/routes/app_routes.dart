import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_admin_dashboard/views/admin/dashboard/admin_dashboard_view.dart';
import 'package:responsive_admin_dashboard/views/admin/other/admin_other_view.dart';

enum AppRoutes {
  dashboard(title: 'Dashboard', child: AdminDashboardView()),
  other(title: 'Other', child: AdminOtherView());

  final Widget child;
  final String title;
  const AppRoutes({required this.title, required this.child});
}

extension BuildRoute on AppRoutes {
  GoRoute route({GlobalKey<NavigatorState>? navigatorKey}) {
    return GoRoute(
      path: path,
      parentNavigatorKey: navigatorKey,
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: child,
        );
      },
    );
  }

  String get path => '/$name';

  Widget? get icon {
    IconData? iconData;

    switch (this) {
      case AppRoutes.dashboard:
        iconData = Icons.dashboard;
        break;
      case AppRoutes.other:
        iconData = Icons.wind_power;
        break;
    }

    return Icon(iconData);
  }
}
