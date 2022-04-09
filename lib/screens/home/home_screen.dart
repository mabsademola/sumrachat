import 'package:flutter/material.dart';
import 'package:sumrachat/screens/home/component/Chatspart.dart';

import '../../Widget/circular_image.dart';
import '../../widget/widgets.dart';
import 'component/searchbar.dart';
import 'component/storieswidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          //  PreferredSize(

          //   preferredSize: Size.fromHeight(100),
          //   child:
          AppBar(
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
          text: "Chats",
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0),
            icon: CicularIcon(
              icon: GetAssetIcon(
                "Shape",
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
                "Shape (1)",
                size: 20,
              ),
            ),
            tooltip: 'Add Story',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        // bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(50),
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
        //       child: SearchBar(),
        //     )),
      ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
              child: SearchBar(),
            ),
            StoriesWidget(),
            ChatPart(),
          ],
        ),
      ),
    );
  }
}
