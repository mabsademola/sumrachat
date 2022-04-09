enum MessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final MessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

final String chats = 'Chats';

class ChatFields {
  static final List<String> values = [
    id,
    sentBy,
    text,
    messageType,
    messageStatus,
    timeSent,
  ];
  static final String id = '_id';
  static final String sentBy = 'sentBy';
  static final String text = 'text';
  static final String messageType = 'messageType';
  static final String messageStatus = 'messageStatus';
  static final String timeSent = 'timeSent';
}

class ChatModel {
    // int? id;
  String sentBy;
  String text;
  final String messageType;
  final String messageStatus;
  int timeSent;

  ChatModel({
    // this.id,
    required this.sentBy,
    required this.text,
    required this.messageType,
    required this.messageStatus,
    required this.timeSent,
  });

  Map<String, Object?> toJson() {
    return {
      "text": text,
      "messageType": messageType,
      "sentBy": sentBy,
      "timeSent": timeSent,
      "messageStatus": messageStatus,
    };
  }

  static ChatModel fromJson(Map<String, Object?> json) => ChatModel(
        timeSent: json[ChatFields.timeSent] as int,
        text: json[ChatFields.text] as String,
        sentBy: json[ChatFields.sentBy] as String,
        messageType: json[ChatFields.messageType] as String,
        messageStatus: json[ChatFields.messageStatus] as String,
      );

  ChatModel copy({
    String? sentBy,
    String? text,
    final String? messageType,
    final String? messageStatus,
    int? timeSent,
  }) =>
      ChatModel(
        sentBy: sentBy ?? this.sentBy,
        text: text ?? this.text,
        messageType: messageType ?? this.messageType,
        messageStatus: messageStatus ?? this.messageStatus,
        timeSent: timeSent ?? this.timeSent,
      );
}

// class ChatModel {
//     // int? id;
//   String sentBy;
//   String text;
//   final MessageType messageType;
//   final MessageStatus messageStatus;
//   int timeSent;

//   ChatModel({
//     // this.id,
//     required this.sentBy,
//     required this.text,
//     required this.messageType,
//     required this.messageStatus,
//     required this.timeSent,
//   });

//   Map<String, Object?> toJson() {
//     return {
//       "text": text,
//       "messageType": messageType,
//       "sentBy": sentBy,
//       "timeSent": timeSent,
//       "messageStatus": messageStatus,
//     };
//   }

//   static ChatModel fromJson(Map<String, Object?> json) => ChatModel(
//         timeSent: json[ChatFields.timeSent] as int,
//         text: json[ChatFields.text] as String,
//         sentBy: json[ChatFields.sentBy] as String,
//         messageType: json[ChatFields.messageType] as MessageType,
//         messageStatus: json[ChatFields.messageStatus] as MessageStatus,
//       );

//   ChatModel copy({
//     String? sentBy,
//     String? text,
//     final MessageType? messageType,
//     final MessageStatus? messageStatus,
//     int? timeSent,
//   }) =>
//       ChatModel(
//         sentBy: sentBy ?? this.sentBy,
//         text: text ?? this.text,
//         messageType: messageType ?? this.messageType,
//         messageStatus: messageStatus ?? this.messageStatus,
//         timeSent: timeSent ?? this.timeSent,
//       );
// }
