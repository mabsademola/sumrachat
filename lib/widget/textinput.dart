import 'package:flutter/material.dart';
import 'package:sumrachat/Widget/widgets.dart';

class EditText extends StatelessWidget {
  EditText({
    Key? key,
    required this.controller,
    // required this.validator,
    this.inputType,
    required this.hintText,
    this.suffix,
    this.readOnly = false,
  }) : super(key: key);

  TextEditingController controller;
  // Function validator;
  TextInputType? inputType = TextInputType.none;
  String hintText;
  Widget? suffix;
  bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      // padding: const EdgeInsets.symmetric(vertical: 8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            color: Color(0xffe8e8e8e),
            blurRadius: 5.0,
            offset: Offset(2.0, 2.0)),
        // BoxShadow(
        //     color: Colors.transparent, blurRadius: 7.0, offset: Offset(0, 2)),
      ]),
      child: TextFormField(
        controller: controller,
        // validator: validator,
        keyboardType: inputType,
        // readOnly: readOnly,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          suffix: suffix,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.blackColor, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.blackColor, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
