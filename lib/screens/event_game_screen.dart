import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/create_game_list.dart';
import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';
import 'package:wp_arena_flutter/components/history_list.dart';
import 'package:wp_arena_flutter/components/in_progress_list.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/constants.dart';
import 'package:wp_arena_flutter/screens/schedule_match_screen.dart';

import 'home_screen.dart';

class EventGame extends StatefulWidget {
  static String id = 'home_screen';

  EventGame({
    required this.userName,
    required this.game,
    required this.eventName,
    required this.playerCount,
    required this.eventTime,
    required this.imageUrl,
  });
  final String userName;
  final String game;
  final String eventName;
  final String playerCount;
  final String eventTime;
  final String imageUrl;

  @override
  _EventGameState createState() => _EventGameState();
}

class _EventGameState extends State<EventGame> {
  bool _inProgress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        centerTitle: true,
        elevation: 0,
        title: Text(
          widget.game,
          style: kGreetingTextStyle,
        ),
        leading: BackButton(
          color: kWhite,
        ),
      ),
      backgroundColor: kBlack,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              Container(
                height: 48,
                width: 450,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScheduleMatchScreen(
                          game: widget.game,
                          imageUrl: widget.imageUrl,
                        ),
                      ),
                    ),
                  },
                  child: Text(
                    'CRIAR PARTIDA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return kPink;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Input(
                enabled: true,
                hintText: 'Buscar jogo',
                errorMessage: 'Por favor, digite o seu nome do usuário',
                prefixIcon: Icons.search,
                hiddenText: false,
              ),
              SizedBox(
                height: 20.0,
              ),
              CreateGameList(
                userName: widget.userName,
                eventName: widget.eventName,
                game: widget.game,
                playerCount: widget.playerCount,
                imageUrl: widget.imageUrl,
                eventTime: widget.eventTime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
