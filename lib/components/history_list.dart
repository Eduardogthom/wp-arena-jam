import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_card.dart';

import '../constants.dart';

// ignore: must_be_immutable
class GamesHistory extends StatelessWidget {
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
                  'Partidas 03/08',
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
                done: true,
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'MOBA',
                tag2: 'ONLINE',
                rule1: 'Somente acima de Plat IV',
                rule2: 'Somente jogadores com 5 estrelas se desempenho ',
                rule3: 'Somente jogadores de 20 a 29 anos',
              ),
              EventCard(
                eventName: 'Partida com os cria',
                game: 'League Of Legends',
                playerCount: '3/5',
                eventTime: '19:30',
                imageUrl: 'images/games/lol.jpg',
                heroTag: getRandomString(5),
                done: true,
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'MOBA',
                tag2: 'ONLINE',
                rule1: 'Somente acima de Plat IV',
                rule2: 'Somente jogadores com 5 estrelas se desempenho ',
                rule3: 'Somente jogadores de 20 a 29 anos',
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                //height: 60.0,
                width: double.infinity,
                child: Text(
                  'Partidas 01/08',
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
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'BATTLE ROYALE',
                tag2: 'FPS',
                rule1: 'Proibido xingamentos',
                rule2: 'Somente jogadores com 5 estrelas se desempenho',
                rule3: 'Fazer amizades',
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                //height: 60.0,
                width: double.infinity,
                child: Text(
                  'Partidas 25/07',
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
                eventName: 'TFT da alegria',
                game: 'Teamfight Tactics',
                playerCount: '3/5',
                eventTime: '19:30',
                imageUrl: 'images/games/tft.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'AUTOCHESS',
                tag2: 'ONLINE',
                rule1: 'Não fazer build de abominação',
                rule2: 'Ser feliz',
                rule3: 'Fazer amizades',
              ),
              EventCard(
                eventName: 'TFT da alegria',
                game: 'Teamfight Tactics',
                playerCount: '3/5',
                eventTime: '19:30',
                imageUrl: 'images/games/tft.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'AUTOCHESS',
                tag2: 'ONLINE',
                rule1: 'Não fazer build de abominação',
                rule2: 'Ser feliz',
                rule3: 'Fazer amizades',
              ),
              EventCard(
                eventName: 'Futeba de carro',
                game: 'Rocket League',
                playerCount: '5/5',
                eventTime: '13:30',
                imageUrl: 'images/games/rocket_league.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'FUTEBOL',
                tag2: 'CORRIDA',
                rule1: 'Somente grand champions',
                rule2: 'Somente jogadores com 5 estrelas se desempenho ',
                rule3: 'Não falar nada',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
