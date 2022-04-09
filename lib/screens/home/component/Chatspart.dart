import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../data.dart';
import '../../../models/listchat_model.dart';
import '../../../widget/listcard.dart';

class ChatPart extends StatelessWidget {
  ChatPart({Key? key}) : super(key: key);

  List<ListChatModel> listcha = listchat;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listcha.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final ds = listcha[index];
        return ListChatTiles(ds: ds);
      },
    );
  }
}
