import 'package:auto_route/auto_route.dart';
import 'package:responsive_admin_dashboard/utils/routes/app_routes.dart';

import '../../views/admin/admin_main_view.dart';
import '../../views/admin/dashboard/admin_dashboard_view.dart';
import '../../views/admin/other/admin_other_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          path: AppRoutes.routeMainAdmin,
          page: AdminMainRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            CustomRoute(
              path: AppRoutes.routeAdminDashboard,
              page: AdminDashboardRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              path: AppRoutes.routeAdminOther,
              page: AdminOtherRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
      ];
}
