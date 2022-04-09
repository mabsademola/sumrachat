import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sumrachat/widget/widgets.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchBarState();
  }
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(8.0),
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.greyColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: GoogleFonts.sourceSansPro(
                fontSize: 17,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: 'Search'),
            ),
          ),
          IconButton(
            splashColor: Colors.transparent,
            padding: const EdgeInsets.all(0),
            icon: Icon(
              Icons.search,
            ),
            tooltip: 'Search',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
    );
  }
}
// class MontserratEditTextLong extends StatelessWidget {
//   MontserratEditTextLong({
//     Key? key,
//     required this.controller,
//     // required this.validator,
//     this.inputType = TextInputType.none,
//     this.obscureText = false,
//     required this.hintText,
//     this.suffixIcon,
//     // this.readOnly = false,
//   }) : super(key: key);

//   TextEditingController controller;
//   // Function validator;
//   TextInputType? inputType;
//   String? hintText;
//   Widget? suffixIcon;
//   bool obscureText;
//   // bool readOnly;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 110,
//       padding: const EdgeInsets.all(18),
//       // padding: const EdgeInsets.symmetric(vertical: 8),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color : AppColors.blackColor, width: 1.2),
//           boxShadow: [
//             BoxShadow(
//                 color: Color(0xffe8e8e8e),
//                 blurRadius: 5.0,
//                 offset: Offset(2.0, 2.0)),
//             // BoxShadow(
//             //     color: Colors.transparent, blurRadius: 7.0, offset: Offset(0, 2)),
//           ]),
//       child: TextFormField(
//         style: GoogleFonts.montserrat(
//           fontSize: Dimensions.fontsize14,
//           fontStyle: FontStyle.normal,
//           fontWeight: FontWeight.w400,
//         ),
//         controller: controller,
//         // validator: validator,
//         keyboardType: inputType,
//         obscureText: obscureText,
//         // readOnly: readOnly,
//         textInputAction: TextInputAction.next,
//         decoration: InputDecoration.collapsed(
//           hintText: hintText,
//           // filled: true,
//           // fillColor: Colors.white,
//         ),
      
//       ),
//     );
//   }
// }
