import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_admin_dashboard/views/admin/dashboard/admin_dashboard_view.dart';
import 'package:responsive_admin_dashboard/views/admin/other/admin_other_view.dart';
import '../../views/admin/admin_main_view.dart';

import 'app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  const AppRouter._();

  static GoRouter router() => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '',
        routes: [
          ShellRoute(
              navigatorKey: _shellNavigatorKey,
              pageBuilder: (context, state, child) {
                return NoTransitionPage(child: AdminMainView(child: child));
              },
              routes: [
                GoRoute(
                  path: '/dashboard',
                  parentNavigatorKey: _shellNavigatorKey,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(
                      child: AdminDashboardView(),
                    );
                  },
                ),
                GoRoute(
                  path: '/other',
                  parentNavigatorKey: _shellNavigatorKey,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(
                      child: AdminOtherView(),
                    );
                  },
                ),
              ]),
        ],
      );
}
