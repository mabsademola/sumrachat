import 'package:flutter/material.dart';
import 'package:sumrachat/Widget/widgets.dart';
import 'package:sumrachat/models/statusmodel.dart';

class PeopleTile extends StatelessWidget {
  PeopleTile({Key? key, required this.ds}) : super(key: key);
  StatusModel ds;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Profileicon(
            size: 40,
            onPressed: null,
            profileUrl: ds.profileurl,
            active: "online",
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                ds.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          CicularIcon(
            icon: GetAssetIcon(
              "Icon (2)",
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
