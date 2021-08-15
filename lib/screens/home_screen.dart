import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_card.dart';
import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';
import 'package:wp_arena_flutter/components/history_list.dart';
import 'package:wp_arena_flutter/components/in_progress_list.dart';
import 'package:wp_arena_flutter/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _inProgress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: new TextSpan(
                          style: kGreetingTextStyle,
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'Olá, ',
                            ),
                            new TextSpan(
                              text: 'Eduardo',
                              style: new TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Que jogo você pretende jogar hoje?',
                        style: kSubTextStyle,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/users/user.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _inProgress = true;
                        print(_inProgress);
                      });
                    },
                    child: Text(
                      'Em andamento',
                      style: _inProgress
                          ? kActiveFilterTextStyle
                          : kUnactiveFilterTextStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _inProgress = false;
                        print(_inProgress);
                      });
                    },
                    child: Text(
                      'Finalizadas',
                      style: !_inProgress
                          ? kActiveFilterTextStyle
                          : kUnactiveFilterTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              _inProgress ? InProgressGames() : GamesHistory(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GradientBottomNavigationBar(
        screenName: 'home',
      ),
    );
  }
}
