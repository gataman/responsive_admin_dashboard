import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../enum/slot_layout_configs.dart';
import '../extensions/slot_layout_extensions.dart';

abstract class BaseAdaptiveView extends StatelessWidget {
  const BaseAdaptiveView({Key? key}) : super(key: key);

  Widget? standardBody(BuildContext context) => null;

  Widget? mobileBody(BuildContext context) => null;

  Widget? tabletBody(BuildContext context) => null;

  Widget? desktopBody(BuildContext context) => null;

  Widget? standardSecondaryBody(BuildContext context) => null;

  Widget? mobileSecondaryBody(BuildContext context) => null;

  Widget? tabletSecondaryBody(BuildContext context) => null;

  Widget? desktopSecondaryBody(BuildContext context) => null;

  bool get internalAnimations => false;

  Axis get bodyOrientation => Axis.horizontal;

  double get bodyRatio => .7;

  bool get expandBodyWidth => false;

  bool get expandSecondaryBodyWidth => false;

  bool get expandBodyHeight => false;

  bool get expandSecondaryBodyHeight => false;

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      internalAnimations: internalAnimations,
      bodyOrientation: bodyOrientation,
      bodyRatio: bodyRatio,
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          ...SlotLayoutConfigs.standardBody.getConfig(standardBody(context), expandBodyWidth, expandBodyHeight),
          ...SlotLayoutConfigs.desktopBody.getConfig(desktopBody(context), expandBodyWidth, expandBodyHeight),
          ...SlotLayoutConfigs.tabletBody.getConfig(tabletBody(context), expandBodyWidth, expandBodyHeight),
          ...SlotLayoutConfigs.mobileBody.getConfig(mobileBody(context), expandBodyWidth, expandBodyHeight),
        },
      ),
      secondaryBody: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          ...SlotLayoutConfigs.standardSecondaryBody
              .getConfig(standardSecondaryBody(context), expandSecondaryBodyWidth),
          ...SlotLayoutConfigs.desktopSecondaryBody
              .getConfig(desktopSecondaryBody(context), expandSecondaryBodyWidth, expandSecondaryBodyHeight),
          ...SlotLayoutConfigs.tabletSecondaryBody
              .getConfig(tabletSecondaryBody(context), expandSecondaryBodyWidth, expandSecondaryBodyHeight),
          ...SlotLayoutConfigs.mobileSecondaryBody
              .getConfig(mobileSecondaryBody(context), expandSecondaryBodyWidth, expandSecondaryBodyHeight),
        },
      ),
    );
  }
}
