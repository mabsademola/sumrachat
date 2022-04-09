import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  CircularImage({
    Key? key,
    this.padding = const EdgeInsets.all(8.0),
    this.maxRadius = 16,
    required this.assetName,
  }) : super(key: key);

  String assetName;
  EdgeInsetsGeometry padding;
  double? maxRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: CircleAvatar(
        maxRadius: maxRadius,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(assetName),
      ),
    );
  }
}
