import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_card.dart';
import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';
import 'package:wp_arena_flutter/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

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
                height: 10.0,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          //height: 60.0,
                          width: double.infinity,
                          child: Text(
                            'Partidas para hoje',
                            style: kDefaultTextStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        EventCard(
                          eventName: 'Partida com os cria',
                          game: 'League Of Legends',
                          playerCount: '3/5',
                          eventTime: '19:30',
                          imageUrl: 'images/games/lol.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Minezinho com a galera',
                          game: 'Minecraft',
                          playerCount: '15',
                          eventTime: '13:30',
                          imageUrl: 'images/games/minecraft.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Mix CS: GO',
                          game: 'Counter-Strike: Global Offensive',
                          playerCount: '5/5',
                          eventTime: '13:30',
                          imageUrl: 'images/games/csgo.jpg',
                          heroTag: getRandomString(5),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          //height: 60.0,
                          width: double.infinity,
                          child: Text(
                            'Partidas 17/08',
                            style: kDefaultTextStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        EventCard(
                          eventName: 'Fortnite da alegria',
                          game: 'Fortnite',
                          playerCount: '3/5',
                          eventTime: '19:30',
                          imageUrl: 'images/games/fortnite.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Grind de Wowzinho',
                          game: 'World Of Warcraft',
                          playerCount: '15',
                          eventTime: '13:30',
                          imageUrl: 'images/games/wow.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Ludo alucinante',
                          game: 'Ludo',
                          playerCount: '5/5',
                          eventTime: '13:30',
                          imageUrl: 'images/games/ludo.jpg',
                          heroTag: getRandomString(5),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          //height: 60.0,
                          width: double.infinity,
                          child: Text(
                            'Partidas 18/08',
                            style: kDefaultTextStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        EventCard(
                          eventName: 'X1 no futeba',
                          game: 'PES2021',
                          playerCount: '3/5',
                          eventTime: '19:30',
                          imageUrl: 'images/games/pes.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Warzone da emoção',
                          game: 'Call Of Duty: Warzone',
                          playerCount: '15',
                          eventTime: '13:30',
                          imageUrl: 'images/games/warzone.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Futeba de carro',
                          game: 'Rocket League',
                          playerCount: '5/5',
                          eventTime: '13:30',
                          imageUrl: 'images/games/rocket_league.jpg',
                          heroTag: getRandomString(5),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          //height: 60.0,
                          width: double.infinity,
                          child: Text(
                            'Partidas 19/08',
                            style: kDefaultTextStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        EventCard(
                          eventName: 'FIFA > PES',
                          game: 'FIFA',
                          playerCount: '3/5',
                          eventTime: '19:30',
                          imageUrl: 'images/games/fifa.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Paladins safado',
                          game: 'Paladins',
                          playerCount: '15',
                          eventTime: '13:30',
                          imageUrl: 'images/games/paladins.jpg',
                          heroTag: getRandomString(5),
                        ),
                        EventCard(
                          eventName: 'Grind no Destiny',
                          game: 'Destiny 2',
                          playerCount: '5/5',
                          eventTime: '13:30',
                          imageUrl: 'images/games/destiny_2.jpg',
                          heroTag: getRandomString(5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
