import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class BreakPointsConstants {
  static const Breakpoint mobile = WidthPlatformBreakpoint(begin: 0, end: 600);
  static const Breakpoint tablet = WidthPlatformBreakpoint(begin: 600, end: 900);
  static const Breakpoint desktop = WidthPlatformBreakpoint(begin: 901);
}
