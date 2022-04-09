import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sumrachat/response/database.dart';

import '../../../Widget/widgets.dart';

import '../../../response/suggestion.dart';

class ChatInputField extends StatefulWidget {
  ChatInputField({
    Key? keyy,
    required this.controller,
    required this.onPressed,
  }) : super(key: keyy);

  TextEditingController controller;
  Function()? onPressed;

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  bool ontext = false;
  late FocusNode _focusNode;
  @override
  void dispose() {
    widget.controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Container(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: SUGGESTIONS
                  .map((value) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: GestureDetector(
                          // onTap:
                          // widget.onTap,
                          onTap: () {
                            widget.controller.text = "";
                            widget.controller.text = value;
                            widget.onPressed;
                            setState(() {});
                          },
                          child: Chip(
                            padding: EdgeInsets.all(7),
                            label: Text(value),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          )),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 32,
                  color: Color(0xFF087949).withOpacity(0.08),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Offstage(
                  offstage: ontext,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.camera,
                          size: 23.0,
                          color: AppColors.blueColor,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.image,
                          size: 23.0,
                          color: AppColors.blueColor,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.microphone,
                          size: 23.0,
                          color: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TextField(
                    // keyboardType: TextInputType.multiline,
                    textCapitalization: TextCapitalization.sentences,
                    autofocus: false,
                    // maxLines: 5,
                    // minLines: 1,
                    focusNode: _focusNode,
                    controller: widget.controller,
                    onChanged: (e) {
                      if (e.isNotEmpty) {
                        ontext = true;
                      } else {
                        ontext = false;
                      }
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Type your message....',
                        filled: true,
                        fillColor: AppColors.greyColor,
                        hintStyle: TextStyle(
                          fontSize: 18.29,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                        suffixIcon: IconButton(
                          padding: EdgeInsets.only(left: 8.0),
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.solidSmileBeam,
                            size: 23.0,
                            color: AppColors.blueColor,
                          ),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: CircleAvatar(
                      backgroundColor: AppColors.blueColor,
                      radius: 20,
                      child: Center(
                        child: IconButton(
                          onPressed: widget.onPressed,
                          icon: Icon(
                            FontAwesomeIcons.paperPlane,
                            size: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
