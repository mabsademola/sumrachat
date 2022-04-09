import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../data.dart';
import '../../../models/listchat_model.dart';
import '../../../widget/actionicon.dart';
import '../enum/readenum.dart';
import '../models/chat_model.dart';
import '../screens/screens.dart';
import 'widgets.dart';

class ListChatTiles extends StatelessWidget {
  ListChatTiles({Key? key, required this.ds}) : super(key: key);
  ListChatModel ds;
  @override
  Widget build(BuildContext context) {
    // print(widget.friendItem.imageAvatarUrl);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        actionPane: const SlidableDrawerActionPane(),
        actionExtentRatio: 0.15,
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(
                name: ds.name,
                profileurl: ds.profileurl,
              ),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: AssetImage(ds.profileurl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ds.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        // SizedBox(height: 8),
                        Opacity(
                          opacity: 0.64,
                          child: Text(
                            ds.chat,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      MessageStatusDot(status: ds.isActive),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[
          ActionIcon(
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 22.0,
            ),
          ),
          ActionIcon(
            color: AppColors.greyColor,
            child: Icon(
              Icons.phone,
              color: AppColors.blackColor,
              size: 22.0,
            ),
          ),
          ActionIcon(
            color: AppColors.greyColor,
            child: Icon(
              Icons.videocam,
              color: AppColors.blackColor,
              size: 22.0,
            ),
          ),
        ],
        secondaryActions: <Widget>[
          ActionIcon(
            color: AppColors.greyColor,
            child: Icon(
              Icons.menu,
              color: AppColors.blackColor,
              size: 22.0,
            ),
          ),
          ActionIcon(
            color: AppColors.greyColor,
            child: Icon(
              Icons.notifications,
              color: AppColors.blackColor,
              size: 22.0,
            ),
          ),
          ActionIcon(
            color: Colors.red,
            child: Icon(
              CupertinoIcons.trash_fill,
              color: Colors.white,
              size: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final Read? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Container Contain(Read status) {
      switch (status) {
        case Read.notread:
          return Container(
            margin: EdgeInsets.only(left: kDefaultPadding / 2),
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              shape: BoxShape.circle,
            ),
          );
          ;
        case Read.isread:
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.check_circle_outline_outlined,
              size: 18,
              color: AppColors.blueColor,
            ),
          );
          ;
        default:
          return Container();
      }
    }

    return Contain(status!);
  }
}
