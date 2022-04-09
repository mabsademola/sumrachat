import 'package:flutter/material.dart';

import '../../../models/chat_model.dart';
import '../../../utils/dimensions.dart';
import 'text_message.dart';

class Message extends StatelessWidget {
  Message({
    Key? key,
    required this.message,
    required this.profileurl,
  }) : super(key: key);

  final ChatModel message;
  String profileurl;
  String uid = "012";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    messageContaint() {
      if (message.messageType == "MessageType.text") {
        return TextMessage(message: message);
      } else {
        return Container();
      }
      // switch (message.messageType) {
      //   case MessageType.text:
      //     return TextMessage(message: message);

      //   default:
      //     return SizedBox();
      // }
    }

    return Padding(
      // padding: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: message.sentBy == uid
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (message.sentBy != uid) ...[
            CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage(profileurl),
            ),
            SizedBox(width: 8),
          ],
          Flexible(child: messageContaint()),
          if (message.sentBy == uid)
            MessageStatusDot(status: MessageStatus.viewed),
          message.sentBy != uid
              ? SizedBox(
                  width: size * 0.15,
                )
              : Container(),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return Colors.red;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return Colors.blue;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Icon(
        status == MessageStatus.not_sent
            ? Icons.close_rounded
            : Icons.check_circle_outline_outlined,
        size: 18,
        color: dotColor(status!),
      ),
    );
  }
}
