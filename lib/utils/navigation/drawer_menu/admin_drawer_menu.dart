import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_routes.dart';
import 'admin_drawer_menu_list_tile.dart';

class AdminDrawerMenu extends StatelessWidget {
  const AdminDrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        child: Column(
          children: [
            //const DrawerHeader(child: Text('Admin Template')),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final appRoute = AppRoutes.values[index];
                final isCurrentRoute = GoRouter.of(context).location.toString() == appRoute.path;
                debugPrint(GoRouter.of(context).location.toString());
                debugPrint(appRoute.path);

                return InkWell(
                  key: ObjectKey(appRoute.path),
                  hoverColor: Theme.of(context).dividerColor,
                  onTap: () {
                    if (!isCurrentRoute) {
                      _goRoute(context, appRoute);
                    }
                  },
                  child: AdminDrawerMenuListTile(
                    title: appRoute.title,
                    route: appRoute,
                    icon: appRoute.icon,
                    isCurrentRoute: isCurrentRoute,
                  ),
                );
              },
              itemCount: AppRoutes.values.length,
            )
          ],
        ),
      ),
    );
  }

  void _goRoute(BuildContext context, AppRoutes appRoute) {
    debugPrint(appRoute.path);
    context.goNamed(appRoute.path);
    Navigator.pop(context);
  }
}
