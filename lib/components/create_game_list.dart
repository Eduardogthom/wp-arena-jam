import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_card.dart';

import '../constants.dart';

// ignore: must_be_immutable
class CreateGameList extends StatelessWidget {
  CreateGameList({
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

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                eventName: 'Bora ganhar!',
                game: game,
                playerCount: playerCount,
                eventTime: eventTime,
                imageUrl: imageUrl,
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'COMPETITIVO',
                tag2: 'ONLINE',
                rule1: 'Boa comunicação',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
              ),
              EventCard(
                eventName: 'Dar uma upada de leves',
                game: game,
                playerCount: playerCount,
                eventTime: eventTime,
                imageUrl: imageUrl,
                heroTag: getRandomString(5),
                totalPlayers: "15",
                maxPlayers: "15",
                tag1: 'COMPETITIVO',
                tag2: 'ONLINE',
                rule1: 'Boa comunicação',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
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
              SizedBox(
                height: 30.0,
              ),
              EventCard(
                eventName: 'Me ajuda a subirrr',
                game: game,
                playerCount: playerCount,
                eventTime: eventTime,
                imageUrl: imageUrl,
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'COMPETITIVO',
                tag2: 'ONLINE',
                rule1: 'Boa comunicação',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
              ),
              EventCard(
                eventName: "Cai de rank :'(",
                game: game,
                playerCount: playerCount,
                eventTime: eventTime,
                imageUrl: imageUrl,
                heroTag: getRandomString(5),
                totalPlayers: "15",
                maxPlayers: "15",
                tag1: 'COMPETITIVO',
                tag2: 'ONLINE',
                rule1: 'Boa comunicação',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
              ),
              EventCard(
                eventName: 'Pipoco em Dó Maior',
                game: game,
                playerCount: playerCount,
                eventTime: eventTime,
                imageUrl: imageUrl,
                heroTag: getRandomString(5),
                totalPlayers: "5",
                maxPlayers: "5",
                tag1: 'COMPETITIVO',
                tag2: 'ONLINE',
                rule1: 'Boa comunicação',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
