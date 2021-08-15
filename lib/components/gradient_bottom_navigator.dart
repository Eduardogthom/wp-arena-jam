import 'package:flutter/material.dart';

import '../constants.dart';

class GradientBottomNavigationBar extends StatelessWidget {
  GradientBottomNavigationBar({required this.screenName});
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kBlack, Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.5, 1],
          tileMode: TileMode.clamp,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Icon(
                Icons.home,
                size: 30,
                color: screenName == 'home' ? kBlue : kWhite,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 72,
              color: screenName == 'add_game' ? kBlue : kWhite,
            ),
            label: 'Add Game',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Icon(
                Icons.person,
                size: 30,
                color: screenName == 'profile' ? kBlue : kWhite,
              ),
            ),
            label: 'School',
          ),
        ],
        //currentIndex: _selectedIndex,
        //onTap: _onItemTapped,
      ),
    );
  }
}
