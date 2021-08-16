import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/screens/game_screen.dart';
import 'package:wp_arena_flutter/screens/home_screen.dart';
import 'package:wp_arena_flutter/screens/profile_screen.dart';

import '../constants.dart';

class GradientBottomNavigationBar extends StatefulWidget {
  GradientBottomNavigationBar(
      {required this.screenName, required this.userName});
  final String screenName;
  final String userName;

  @override
  _GradientBottomNavigationBarState createState() =>
      _GradientBottomNavigationBarState();
}

class _GradientBottomNavigationBarState
    extends State<GradientBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(
              userName: widget.userName,
            ),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameScreen(
              userName: widget.userName,
            ),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(
              userName: widget.userName,
            ),
          ),
        );
        break;
      default:
    }
  }

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
                color: widget.screenName == 'home' ? kBlue : kWhite,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 68,
              color: widget.screenName == 'game' ? kBlue : kWhite,
            ),
            label: 'Add Game',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Icon(
                Icons.person,
                size: 30,
                color: widget.screenName == 'profile' ? kBlue : kWhite,
              ),
            ),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
