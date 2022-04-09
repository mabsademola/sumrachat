// import 'package:flutter/material.dart';

// import 'widgets.dart';

// /// Montserrat Button
// class MontserratButton extends StatelessWidget {
//   MontserratButton({
//     Key? key,
//     required this.onTap,
//     required this.child,
//     this.color = AppColors.blackColor,
//   }) : super(key: key);

//   Color? color;
//   Function()? onTap;
//   Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
//         width: Dimensions.padding200,
//         height: Dimensions.sizebox35,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(50),
//           color: const Color(0xFF980217),
//         ),
//         child: Center(
//           child: child,
//         ),
//       ),
//     );
//   }
// }
