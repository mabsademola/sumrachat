import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sumrachat/utils/colors.dart';
import 'people/explorescreen.dart';
import 'screens.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[];

  Widget getBody() {
    List<Widget> screens = [
      HomeScreen(),
      ExploreScreen(),
      Scaffold(body: Center(child: Text("Oncoming"))),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: screens,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: AppColors.blackColor),
        unselectedIconTheme: IconThemeData(color: AppColors.grey2Color),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(
              FontAwesomeIcons.solidComment,
              size: 24.0,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userFriends,
              size: 24.0,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.gamepad,
              size: 24.0,
            ),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
