import '../enum/readenum.dart';

class ListChatModel {
  String profileurl;
  String name;
  String chat;

  Read isActive;

  ListChatModel(
      {required this.profileurl,
      required this.name,
      required this.chat,
      required this.isActive});
}
