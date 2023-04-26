import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../../utils/constants/break_points_constants.dart';

enum SlotLayoutConfigs {
  standardBody(Breakpoints.standard),
  mobileBody(BreakPointsConstants.mobile),
  tabletBody(BreakPointsConstants.tablet),
  desktopBody(BreakPointsConstants.desktop),

  standardSecondaryBody(Breakpoints.standard),
  mobileSecondaryBody(BreakPointsConstants.mobile),
  tabletSecondaryBody(BreakPointsConstants.tablet),
  desktopSecondaryBody(BreakPointsConstants.desktop);

  final Breakpoint breakpoint;

  const SlotLayoutConfigs(this.breakpoint);
}
