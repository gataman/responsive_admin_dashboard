// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AdminMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminMainView(),
      );
    },
    AdminOtherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminOtherView(),
      );
    },
    AdminDashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminDashboardView(),
      );
    },
  };
}

/// generated route for
/// [AdminMainView]
class AdminMainRoute extends PageRouteInfo<void> {
  const AdminMainRoute({List<PageRouteInfo>? children})
      : super(
          AdminMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminOtherView]
class AdminOtherRoute extends PageRouteInfo<void> {
  const AdminOtherRoute({List<PageRouteInfo>? children})
      : super(
          AdminOtherRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminOtherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminDashboardView]
class AdminDashboardRoute extends PageRouteInfo<void> {
  const AdminDashboardRoute({List<PageRouteInfo>? children})
      : super(
          AdminDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminDashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
