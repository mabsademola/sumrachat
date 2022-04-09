import 'package:flutter/material.dart';

import '../../../data.dart';
import '../../../models/statusmodel.dart';
import '../../../widget/storycard.dart';
import '../../../widget/widgets.dart';

class StoriesWidget extends StatelessWidget {
  StoriesWidget({Key? key}) : super(key: key);

  List<StatusModel> status = statusModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: UserStoryCard()),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: status.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final ds = status[index];
                return StoryCard(ds: ds);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  UserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          padding: const EdgeInsets.all(4),
          icon: CicularIcon(
              rad: 100,
              icon: Icon(
                Icons.add,
                size: 25.0,
              )),
          tooltip: 'Add story',
          onPressed: () {
            // handle the press
          },
        ),
        // Profileicon(
        //   onPressed: null,
        //   profileUrl: ds.profileurl,
        //   active: "online",
        // ),
        SizedBox(height: 8.0),
        Container(
          width: 60.0,
          child: Text(
            'Add story',
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            // style: _getTextStyle(),
          ),
        ),
      ],
    );
  }
}

class UserStoryCard extends StatelessWidget {
  UserStoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 60.0,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.greyColor,
              ),
            ),
            child: CircleAvatar(
              child: Icon(
                Icons.add,
                size: 26.0,
              ),
              maxRadius: 25,
              backgroundColor: AppColors.greyColor,
              // backgroundImage: AssetImage(path),
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            "Add Story",
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
