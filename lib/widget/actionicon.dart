import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sumrachat/utils/colors.dart';

class ActionIcon extends StatelessWidget {
  ActionIcon({Key? key, this.color = AppColors.blueColor, required this.child})
      : super(key: key);

  Color? color;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: SlideAction(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: child),
    );
  }
}
