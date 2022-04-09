import 'package:flutter/material.dart';
import 'package:sumrachat/Widget/widgets.dart';

import 'circular_image.dart';

class CicularIcon extends StatelessWidget {
  CicularIcon({
    Key? key,
    this.rad = 40,
    this.iconsize = 19,
    required this.icon,
    this.color = AppColors.greyColor,
    this.onPressed,
  }) : super(key: key);
  double? rad;
  Color? color;
  Widget icon;
  double? iconsize;
  Color? iconcolor;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rad,
      height: rad,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(40),
        color: color,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}

class Profileicon extends StatelessWidget {
  Profileicon({
    Key? key,
    required this.profileUrl,
    this.size = 52,
    this.onPressed,
    this.active,
  }) : super(key: key);

  String profileUrl;
  double size;
  String? active;

  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Stack(
        children: [
          CircularImages(path: profileUrl, height: size),

          if (active == "online")
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3),
                ),
              ),
            ),
          // if (active == "offline")
          //   Positioned(
          //     right: 0,
          //     bottom: 0,
          //     child: Container(
          //       height: 18,
          //       width: 18,
          //       decoration: BoxDecoration(
          //         color: kContentColorDarkTheme,
          //         shape: BoxShape.circle,
          //         border: Border.all(
          //             color: Theme.of(context).scaffoldBackgroundColor,
          //             width: 3),
          //       ),
          //     ),
          //   ),
          // if (active == "away")
          //   Positioned(
          //     right: 0,
          //     bottom: 0,
          //     child: Container(
          //       height: 18,
          //       width: 18,
          //       decoration: BoxDecoration(
          //         color: kSecondaryColor,
          //         shape: BoxShape.circle,
          //         border: Border.all(
          //             color: Theme.of(context).scaffoldBackgroundColor,
          //             width: 3),
          //       ),
          //     ),
          //   ),
          // if (active == null)
          //   Positioned(
          //     right: 0,
          //     bottom: 0,
          //     child: Container(
          //       height: 18,
          //       width: 18,
          //       decoration: BoxDecoration(
          //         color: kContentColorDarkTheme,
          //         shape: BoxShape.circle,
          //         border: Border.all(
          //             color: Theme.of(context).scaffoldBackgroundColor,
          //             width: 3),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
