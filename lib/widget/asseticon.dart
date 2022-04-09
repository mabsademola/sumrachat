import 'package:flutter/material.dart';

import '../utils/colors.dart';

/// Get Asset Icon
class GetAssetIcon extends StatelessWidget {
  GetAssetIcon(
    this.icon, {
    Key? key,
    this.color = AppColors.blackColor,
    this.size = 20,
  }) : super(key: key);
  String icon;
  Color? color;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/$icon.png',
      color: color,
      height: size,
      width: size,
    );
  }
}

/// Get Asset Icon
class GetColorAssetIcon extends StatelessWidget {
  GetColorAssetIcon(
    this.icon, {
    Key? key,
    // this.color = AppColors.blackColor,
    this.size = 25,
  }) : super(key: key);
  String icon;
  // Color? color;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/$icon.png',
      // color: color,
      height: size,
      width: size,
    );
  }
}

/// Get Asset Icon
class GetColorAssetImage extends StatelessWidget {
  GetColorAssetImage(
    this.icon, {
    Key? key,
    // this.color = AppColors.blackColor,
    // this.size = 25,
  }) : super(key: key);
  String icon;
  // Color? color;
  // double? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$icon.png',
      // color: color,
      // height: size,
      // width: size,
    );
  }
}
