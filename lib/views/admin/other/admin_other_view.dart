import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_admin_dashboard/core/base/base_adaptive_view.dart';

@RoutePage()
class AdminOtherView extends BaseAdaptiveView {
  const AdminOtherView({super.key});

  @override
  Widget? standardBody(BuildContext context) {
    return Text('standardBody');
  }
}
