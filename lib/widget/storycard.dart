import 'package:flutter/material.dart';
import 'package:sumrachat/Widget/widgets.dart';

import '../models/statusmodel.dart';

class StoryCard extends StatelessWidget {
  StoryCard({Key? key, required this.ds}) : super(key: key);

  StatusModel ds;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 60.0,
      child: Column(
        children: [
          Profileicon(
            onPressed: null,
            profileUrl: ds.profileurl,
            active: "online",
          ),
          SizedBox(height: 4.0),
          Text(
            ds.name,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
