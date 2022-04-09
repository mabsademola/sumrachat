import 'package:flutter/material.dart';

import '../../../data.dart';
import '../../../models/statusmodel.dart';
import '../../../widget/peopletile.dart';

class ListPeople extends StatelessWidget {
   ListPeople({ Key? key }) : super(key: key);
    List<StatusModel> listcha = recentlyactive;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listcha.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final ds = listcha[index];
        return PeopleTile(ds: ds);
      },
    );
  }
}