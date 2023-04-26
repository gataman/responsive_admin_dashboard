import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:responsive_admin_dashboard/utils/navigation/drawer_menu/admin_drawer_menu.dart';

class AdminMainView extends StatelessWidget {
  const AdminMainView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const AdminDrawerMenu(),
      body: AdaptiveLayout(
        internalAnimations: false,
        primaryNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.standard: SlotLayout.from(
            key: const Key('main_primary_navigation'),
            builder: (context) {
              return const AdminDrawerMenu();
            },
          ),
        }),
        body: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.standard: SlotLayout.from(
            key: const Key('main_body'),
            builder: (context) {
              return child;
            },
          ),
        }),
      ),
    );
  }

  Widget _desktopView() {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: child,
    );
  }
}
