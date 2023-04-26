import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import '../enum/slot_layout_configs.dart';

extension SlotLayoutConfigsExtensions on SlotLayoutConfigs {
  Map<Breakpoint, SlotLayoutConfig> getConfig(Widget? child,
      [bool expandBodyWidth = false, bool expandBodyHeight = false]) {
    return child != null
        ? {
            breakpoint: SlotLayout.from(
              key: Key('base_adaptive_$name'),
              builder: (context) {
                if (expandBodyWidth) {
                  return Row(
                    children: [
                      expandBodyHeight
                          ? Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [Expanded(child: child)],
                              ),
                            )
                          : Expanded(child: child),
                    ],
                  );
                } else {
                  return child;
                }
              },
            )
          }
        : {};
  }
}
