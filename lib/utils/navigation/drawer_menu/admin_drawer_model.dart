// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';

class AdminDrawerModel {
  final String title;
  final IconData iconData;
  final String route;

  AdminDrawerModel({
    required this.title,
    required this.iconData,
    required this.route,
  });

  //Here you can set the menu items.
  static final getAdminDrawerList = [
    AdminDrawerModel(title: "Dashboard", iconData: Icons.dashboard, route: AppRoutes.routeAdminDashboard),
    AdminDrawerModel(title: "Other", iconData: Icons.sailing, route: AppRoutes.routeAdminOther),
  ];
}
