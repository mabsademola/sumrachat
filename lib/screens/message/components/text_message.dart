import 'package:flutter/material.dart';

import '../../../Widget/widgets.dart';

import '../../../models/chat_model.dart';

class TextMessage extends StatelessWidget {
  TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatModel message;
  String uid = "012";

  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:
            message.sentBy == uid ? AppColors.blueColor : AppColors.greyColor,
        borderRadius: message.sentBy == uid ? radius() : radiuss(),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          fontSize: 18.29,
          fontWeight: FontWeight.w400,
          color: message.sentBy == uid
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }

  BorderRadius radius() {
    return BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(0),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20));
  }

  BorderRadius radiuss() {
    return BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(0));
  }
}
