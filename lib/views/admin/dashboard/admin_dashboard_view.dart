import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '../../../core/base/base_adaptive_view.dart';

@RoutePage()
class AdminDashboardView extends BaseAdaptiveView {
  const AdminDashboardView({super.key});
  @override
  bool get expandBodyWidth => true;

  @override
  bool get expandSecondaryBodyWidth => true;

  @override
  Widget desktopBody(BuildContext context) {
    return const _ExampleWidget(
      child: Text('Desktop Body Content is here'),
    );
  }

  @override
  Widget tabletBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        _ExampleWidget(
          child: Text('Tablet Body Content is here'),
        ),
        _ExampleSecondaryWidget(
          height: 200,
          child: Text('Tablet Secondary Body Content is here'),
        ),
      ],
    );
  }

  @override
  Widget mobileBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        _ExampleWidget(
          child: Text('Mobile Body Content is here'),
        ),
        _ExampleSecondaryWidget(
          height: 200,
          child: Text('Mobile Secondary Body Content is here'),
        ),
      ],
    );
  }

  @override
  Widget? desktopSecondaryBody(BuildContext context) {
    return const _ExampleSecondaryWidget(
      height: 200,
      child: Text('Desktop Secondary Body Content is here'),
    );
  }
}

class _ExampleWidget extends StatelessWidget {
  const _ExampleWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}

class _ExampleSecondaryWidget extends StatelessWidget {
  const _ExampleSecondaryWidget({required this.child, this.height});
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height ?? 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
