// ignore_for_file: prefer_conditional_assignment

import 'package:flutter/material.dart';

class CircularImages extends StatelessWidget {
  const CircularImages(
      {Key? key, required this.path, this.height = 50, this.isBorder = false})
      : super(key: key);
  final String path;
  final double height;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: Colors.grey.shade100, width: isBorder ? 2 : 0),
      ),
      child: CircleAvatar(
        maxRadius: height / 2,
        backgroundColor: Theme.of(context).cardColor,
        backgroundImage: AssetImage(path),
      ),
    );
  }
}
