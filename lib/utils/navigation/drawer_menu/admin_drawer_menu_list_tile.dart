// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:responsive_admin_dashboard/utils/routes/app_routes.dart';

class AdminDrawerMenuListTile extends StatelessWidget {
  const AdminDrawerMenuListTile({
    super.key,
    this.icon,
    required this.title,
    required this.route,
    required this.isCurrentRoute,
  });
  final Widget? icon;
  final String title;
  final AppRoutes route;
  final bool isCurrentRoute;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isCurrentRoute,
      leading: icon,
      title: Text(
        title,
        style: _getTitleStyle(context),
      ),
    );
  }

  TextStyle? _getTitleStyle(BuildContext context) => Theme.of(context).textTheme.titleMedium?.copyWith(
        color: isCurrentRoute ? Theme.of(context).colorScheme.primary : Theme.of(context).disabledColor,
      );
}
