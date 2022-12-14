// @dart=2.9

import 'dart:io';

import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget sectionOptionDivider = Padding(
  padding: EdgeInsets.all(Platform.isIOS ? 4 : 2),
);

Widget sectionOptionSpacing = const SizedBox(height: 6);

ExpandableThemeData getExpandableTheme(BuildContext context) {
  return const ExpandableThemeData(
    hasIcon: false,
    useInkWell: false,
    tapBodyToCollapse: true,
    tapBodyToExpand: true,
    animationDuration: Duration(milliseconds: 400),
  );
}
