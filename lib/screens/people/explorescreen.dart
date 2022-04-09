import 'package:flutter/material.dart';
import 'package:sumrachat/screens/home/component/Chatspart.dart';

import '../../Widget/circular_image.dart';
import '../../widget/widgets.dart';
import '../home/component/searchbar.dart';
import 'components/listpeople.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {},
              // => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const Scaffold(),
              //     )),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child:
                    CircularImages(path: 'assets/images/Oval.png', height: 40),
              ),
            );
          },
        ),
        title: SourceSansProText700(
          text: "People",
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0),
            icon: CicularIcon(
              icon: GetAssetIcon(
                "Icon (1)",
                size: 20,
              ),
            ),
            tooltip: 'Camera',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            padding: const EdgeInsets.all(0),
            icon: CicularIcon(
              icon: GetAssetIcon(
                "Icon1",
                size: 20,
              ),
            ),
            tooltip: 'Add Story',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
              child: SearchBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 70, left: 8, right: 16, top: 50),
              child: Text(
                "RECENTLY ACTIVE",
                style: TextStyle(fontSize: 15.51, fontWeight: FontWeight.w500),
              ),
            ),
            ListPeople()
          ],
        ),
      ),
    );
  }
}
