// import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/chat_model.dart';
import '../../response/database.dart';
import '../../widget/widgets.dart';
import 'components/chat_input_field.dart';
import 'components/message.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({
    Key? keyy,
    required this.name,
    required this.profileurl,
  }) : super(key: keyy);

  String name;
  String profileurl;

  State<ChatScreen> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  late List<ChatModel> chatModel;
  bool isLoading = false;
  late Timer _timer;
  TextEditingController _controller = TextEditingController();
  GlobalKey<ChatScreenState> keyy = GlobalKey();
  ChatDatabase db = ChatDatabase.instance;

  String uid = "012";

  onSend() async {
    if (_controller.text.isNotEmpty) {
      int time = DateTime.now().millisecondsSinceEpoch;

      ChatModel chatModel = ChatModel(
        text: _controller.text,
        sentBy: uid,
        messageType: "MessageType.text",
        messageStatus: "MessageStatus.viewed",
        timeSent: time,
      );
      await db.Send(chatModel: chatModel);
      await refreshchat();
      _controller.text = '';
      setState(() {});
      Future.delayed(const Duration(seconds: 2), () async {
        await db.SendBot(chatModel: chatModel);
        await refreshchat();
        setState(() {});
      });
    } else {
      // TODO
    }
  }

  @override
  void initState() {
    super.initState();

    loadchats();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  Future loadchats() async {
    setState(() => isLoading = true);
    await refreshchat();
    setState(() => isLoading = false);
  }

  refreshchat() async {
    chatModel = await ChatDatabase.instance.readAllChat();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 30,
        elevation: 3,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(FontAwesomeIcons.chevronLeft, color: AppColors.blueColor
              // size: 24,
              ),
        ),
        title: Container(
          child: Row(
            children: [
              Profileicon(
                onPressed: null,
                profileUrl: widget.profileurl,
                active: "online",
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20.29,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              FontAwesomeIcons.phoneAlt,
              color: AppColors.blueColor,
              size: 23.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Icon(
              FontAwesomeIcons.video,
              color: AppColors.blueColor,
              size: 23.0,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/background 2.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Center(
              child: isLoading
                  ? CircularProgressIndicator()
                  : chatModel.isEmpty
                      ? Text(
                          'No Chat',
                          style: TextStyle(fontSize: 24),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListView.builder(
                              reverse: true,
                              itemCount: chatModel.length,
                              itemBuilder: (context, index) {
                                final ds = chatModel[index];
                                return Message(
                                  message: ds,
                                  profileurl: widget.profileurl,
                                );
                              }),
                        ),
            )),
            ChatInputField(
              controller: _controller,
              onPressed: () {
                onSend();
              },
              // onTap: onSend(),
              // refresh: refreshchat(),
            ),
          ],
        ),
      ),
    );
  }
}
