import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:responsive_admin_dashboard/utils/constants/break_points_constants.dart';
import '../../utils/navigation/drawer_menu/admin_drawer_menu.dart';

@RoutePage()
class AdminMainView extends StatelessWidget {
  const AdminMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin Responsive Panel'),
        ),
        drawer: !BreakPointsConstants.desktop.isActive(context) ? const AdminDrawerMenu() : null,
        body: const _AdminMainViewBody(),
      ),
    );
  }
}

class _AdminMainViewBody extends StatelessWidget {
  const _AdminMainViewBody();

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      internalAnimations: false,
      // Drawer Menu in LargeScreen
      primaryNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
        BreakPointsConstants.desktop: SlotLayout.from(
          key: const Key('admin_main_desktop_navigation'),
          builder: (context) {
            return const AdminDrawerMenu(
              hasHeader: false,
              isDesktop: true,
            );
          },
        ),
      }),

      body: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
        Breakpoints.standard: SlotLayout.from(
          key: const Key('admin_main_body_standard'),
          builder: (context) {
            return const AutoRouter();
          },
        ),
      }),
    );
  }
}
