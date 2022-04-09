import 'package:sumrachat/enum/readenum.dart';

import 'models/chat_model.dart';
import 'models/listchat_model.dart';
import 'models/statusmodel.dart';

List<StatusModel> recentlyactive = [
  StatusModel(
    name: "Martha Craig",
    profileurl: "assets/images/Oval(2).png",
  ),
  StatusModel(
    name: "Kieron Dotson",
    profileurl: "assets/images/Oval-1(1).png",
  ),
  StatusModel(
    name: "Zack John",
    profileurl: "assets/images/Oval-2(1).png",
  ),
  StatusModel(
    name: "Jamie Franco",
    profileurl: "assets/images/Oval-3(1).png",
  ),
  StatusModel(
    name: "Tabitha Potter",
    profileurl: "assets/images/Oval-4(1).png",
  ),
  StatusModel(
    name: "Albert Lasker",
    profileurl: "assets/images/Oval-5(1).png",
  ),
];

List demeChatMessages = [
  ChatMessage(
    text: "Hi Sajol,",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Hello, How are you?",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Hello, Jacob!",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "How are you doing?",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Error happend",
    messageType: MessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
  ChatMessage(
    text: "This looks great man!!",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Glad you like it",
    messageType: MessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
];

List<StatusModel> statusModel = [
  StatusModel(
    name: "Joshua Lawrence",
    profileurl: "assets/images/Oval-4.png",
  ),
  StatusModel(
    name: "Martin Randolph",
    profileurl: "assets/images/Oval-1.png",
  ),
  StatusModel(
    name: "Karen Castillo",
    profileurl: "assets/images/Oval-3.png",
  ),
  StatusModel(
    name: "Maximillian Jacobson",
    profileurl: "assets/images/Oval(1).png",
  ),
  StatusModel(
    name: "Maisy Humphrey",
    profileurl: "assets/images/Oval-5.png",
  ),
  StatusModel(
    name: "Andrew Parker",
    profileurl: "assets/images/Oval-2.png",
  ),
];

List<ListChatModel> listchat = [
  ListChatModel(
    chat: "You: What’s man!",
  
    name: "Martin Randolph",
    profileurl: "assets/images/Oval-1.png",
    isActive: Read.notread,
  ),
  ListChatModel(
    chat: 'You: Ok, thanks!',
  
    name: "Andrew Parker",
    profileurl: "assets/images/Oval-2.png",
    isActive: Read.isread,
  ),
  ListChatModel(
    chat: 'You: Ok, See you i',
  
    name: "Karen Castillo",
    profileurl: "assets/images/Oval-3.png",
    isActive: Read.isread,
  ),
  ListChatModel(
    chat: 'Have a good day, Mai',
 
    name: "Maisy Humphrey",
    profileurl: "assets/images/Oval-5.png",
    isActive: Read.isread,
  ),
  ListChatModel(
    chat: 'The business plan l',

    name: "Joshua Lawrence",
    profileurl: "assets/images/Oval-4.png",
    isActive: Read.none,
  ),
  ListChatModel(
      chat: 'Messenger UI',
  
      name: "Maximillian Jacobson",
      profileurl: "assets/images/Oval(1).png",
      isActive: Read.none),
       ListChatModel(
    chat: 'You: Ok, See you i',
  
    name: "Karen Castillo",
    profileurl: "assets/images/Oval-3.png",
    isActive: Read.isread,
  ),
  ListChatModel(
    chat: 'Have a good day, Mai',

    name: "Maisy Humphrey",
    profileurl: "assets/images/Oval-5.png",
    isActive: Read.isread,
  ),
  ListChatModel(
    chat: 'The business plan l',

    name: "Joshua Lawrence",
    profileurl: "assets/images/Oval-4.png",
    isActive: Read.none,
  ),
  ListChatModel(
      chat: 'Messenger UI',
  
      name: "Maximillian Jacobson",
      profileurl: "assets/images/Oval(1).png",
      isActive: Read.none),
];
