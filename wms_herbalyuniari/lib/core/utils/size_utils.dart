import 'dart:ui' as ui; 
import 'package:flutter/material.dart';
import '../app_export.dart';

const num FIGMA_DESIGN_WIDTH = 360;
const num FIGMA_DESIGN_HEIGHT = 800;
const num FIGMA_DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => SizeUtils.height;
  double get h => ((this * _width) /FIGMA_DESIGN_WIDTH);
  double get v =>
    (this * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}){
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }

typedef ResponsiveBuild = Widget Function(
  BuildContext context, Orientation orientation, DeviceType devicetype);

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}); : super(key: key);

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints){
      return OrientationBuilder(builder: (context, orientation){
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;

  static late Orientatiton orientatiton;

  static late DeviceType devicetype;

  static late double height;

  static double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Oeientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientatiton = currentOrientation;
    if (orientatiton == Orientation.potrait) {
      width = 
        boxConstraints.maxWidth.isNotZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNotZero();
    } else {
      width = 
        boxConstraints.maxHeight.isNotZero(defaulValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNotZero();
    }
    deviceType = DeviceType.mobile;
  }
}