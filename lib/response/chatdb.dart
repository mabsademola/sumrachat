// import 'dart:math';

// import '../models/chat_model.dart';
// import 'response.dart';

// class ChattDatabase {
  
//   Send({required ChatModel chatModel}) async {
//     ChatModel bot_chatModel = await ReplyBot(text: chatModel.text);
//     ChatModel user_chatModel = chatModel;
//     await create(user_chatModel);
//     await create(bot_chatModel);
//   }

//   /// i will be making my own sample chatbot
//   Future<ChatModel> ReplyBot({required String text}) async {
//     String bot = "bot123";
//     int time = DateTime.now().millisecondsSinceEpoch;
// //  if (text.contains("hello"))
//     Random random = Random();
//     if (GREETINGS_CHECK.any((e) => text.toLowerCase().contains(e))) {
//       int randomNumber = random.nextInt(GREETING_RESPONSE.length);
//       String text = GREETING_RESPONSE[randomNumber].toString();
//       ChatModel chatModel = ChatModel(
//         text: text,
//         sentBy: bot,
//         messageType: MessageType.text,
//         messageStatus: MessageStatus.viewed,
//         timeSent: time,
//       );

//       return chatModel;
//     } else {
//       int randomNumber = random.nextInt(ERROR_RESPONSE.length);
//       String text = ERROR_RESPONSE[randomNumber].toString();
//       ChatModel chatModel = ChatModel(
//         text: text,
//         sentBy: bot,
//         messageType: MessageType.text,
//         messageStatus: MessageStatus.viewed,
//         timeSent: time,
//       );

//       return chatModel;
//     }
//   }

// }