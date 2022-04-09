// ignore_for_file: non_constant_identifier_names

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/chat_model.dart';
import 'dart:math';
import 'check.dart';
import 'response.dart';

class ChatDatabase {
  static final ChatDatabase instance = ChatDatabase._init();

  static Database? _database;

  ChatDatabase._init();

  Future<Database> get database async {
    if (_database != null) {
      print("database already exist");
      return _database!;
    } else {
      _database = await _initDB('sumrachat.db');
      print("database just created");
      return _database!;
    }
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();

    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);

  
  }

  Future _createDB(Database db, int version) async {


    await db.execute(
        'CREATE TABLE $chats (${ChatFields.id} INTEGER PRIMARY KEY, ${ChatFields.sentBy} TEXT, ${ChatFields.text} TEXT, ${ChatFields.messageType} TEXT, ${ChatFields.messageStatus} TEXT, ${ChatFields.timeSent} INTEGER)');

    print("Chat Tracking: 8");
  }



  Future<int> create(ChatModel chatModel) async {
    final db = await instance.database;

    final id = await db.insert(chats, chatModel.toJson());
    print("Chat Tracking: 4 the id is $id");
    return id;
  }


  Future<List<ChatModel>> readAllChat() async {
    final db = await instance.database;

    final orderBy = '${ChatFields.timeSent} DESC';

    final result = await db.query(chats, orderBy: orderBy);

    return result.map((json) => ChatModel.fromJson(json)).toList();
  }



  Future close() async {
    final db = await instance.database;

    db.close();
  }

  Send({required ChatModel chatModel}) async {
    ChatModel user_chatModel = chatModel;
   
    await create(user_chatModel);

  }

  SendBot({required ChatModel chatModel}) async {
    ChatModel bot_chatModel = await ReplyBot(text: chatModel.text);
    print("Chat Tracking: 3 bot reply is ${bot_chatModel.text}");
    await create(bot_chatModel);
  }

  /// i will be making my own sample chatbot
  Future<ChatModel> ReplyBot({required String text}) async {
    String bot = "bot123";
    int time = DateTime.now().millisecondsSinceEpoch;
    Random random = Random();
    if (GREETINGS_CHECK.any((e) => text.toLowerCase().contains(e))) {
      int randomNumber = random.nextInt(GREETING_RESPONSE.length);
      String bottext = GREETING_RESPONSE[randomNumber].toString();
      ChatModel chatModel = ChatModel(
        text: bottext,
        sentBy: bot,
        messageType: "MessageType.text",
        messageStatus: "MessageStatus.viewed",
        timeSent: time,
      );

      return chatModel;
    } else if (IDENTITY_CHECK.any((e) => text.toLowerCase().contains(e))) {
      int randomNumber = random.nextInt(IDENTITY_RESPONSE.length);
      String bottext = IDENTITY_RESPONSE[randomNumber].toString();
      ChatModel chatModel = ChatModel(
        text: bottext,
        sentBy: bot,
        messageType: "MessageType.text",
        messageStatus: "MessageStatus.viewed",
        timeSent: time,
      );

      return chatModel;
    } else {
      int randomNumber = random.nextInt(ERROR_RESPONSE.length);
      String bottext = ERROR_RESPONSE[randomNumber].toString();
      ChatModel chatModel = ChatModel(
        text: bottext,
        sentBy: bot,
        messageType: "MessageType.text",
        messageStatus: "MessageStatus.viewed",
        timeSent: time,
      );

      return chatModel;
    }
  }
}
