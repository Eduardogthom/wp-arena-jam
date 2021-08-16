import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_card.dart';

import '../constants.dart';

// ignore: must_be_immutable
class InProgressGames extends StatelessWidget {
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
                eventName: 'Partida com os cria',
                game: 'League Of Legends',
                playerCount: '3/5',
                eventTime: '19:30',
                imageUrl: 'images/games/lol.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'MOBA',
                tag2: 'ONLINE',
                rule1: 'Somente acima de Plat IV',
                rule2: 'Somente jogadores com 5 estrelas se desempenho ',
                rule3: 'Somente jogadores de 20 a 29 anos',
                private: true,
              ),
              EventCard(
                eventName: 'Minezinho com a galera',
                game: 'Minecraft',
                playerCount: '15',
                eventTime: '13:30',
                imageUrl: 'images/games/minecraft.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "15",
                maxPlayers: "15",
                tag1: 'SANDBOX',
                tag2: 'CRIATIVO',
                rule1: 'Criatividade',
                rule2: 'Somente jogadores com 5 estrelas de comportamento ',
                rule3: 'Todas as idades',
              ),
              EventCard(
                eventName: 'Mix CS: GO',
                game: 'Counter-Strike: GO',
                playerCount: '5/5',
                eventTime: '13:30',
                imageUrl: 'images/games/csgo.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "5",
                maxPlayers: "5",
                tag1: 'FPS',
                tag2: 'COMPETITIVO',
                rule1: 'Criatividade',
                rule2: 'Somente jogadores com 5 estrelas de desempenho ',
                rule3: 'Todas as idades',
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
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'BATTLE ROYALE',
                tag2: 'ONLINE',
                rule1: 'Alegria',
                rule2: 'Somente jogadores com 5 estrelas de comportamento ',
                rule3: 'Todas as idades',
              ),
              EventCard(
                eventName: 'Grind de Wowzinho',
                game: 'World Of Warcraft',
                playerCount: '15',
                eventTime: '13:30',
                imageUrl: 'images/games/wow.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "15",
                maxPlayers: "15",
                tag1: 'MMORPG',
                tag2: 'ONLINE',
                rule1: 'Alegria',
                rule2: 'Somente jogadores com 5 estrelas de comportamento ',
                rule3: 'Todas as idades',
              ),
              EventCard(
                eventName: 'Ludo alucinante',
                game: 'Ludo',
                playerCount: '5/5',
                eventTime: '13:30',
                imageUrl: 'images/games/ludo.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "5",
                maxPlayers: "5",
                tag1: 'TABULEIRO',
                tag2: 'ONLINE',
                rule1: 'Alegria',
                rule2: 'Ludo online pelo zap',
                rule3: 'Todas as idades',
                private: true,
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
                playerCount: '2',
                eventTime: '19:30',
                imageUrl: 'images/games/pes.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'FUTEBOL',
                tag2: 'ONLINE',
                rule1: 'Alegria',
                rule2: 'Somente jogadores com 5 estrelas de comportamento ',
                rule3: 'Todas as idades',
              ),
              EventCard(
                eventName: 'Warzone da emoção',
                game: 'Call Of Duty: Warzone',
                playerCount: '15',
                eventTime: '13:30',
                imageUrl: 'images/games/warzone.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "15",
                maxPlayers: "15",
                tag1: 'BATTLE ROYALE',
                tag2: 'FPS',
                rule1: 'Mira boa',
                rule2: 'Acima de 4.5 estrelas de desempenho',
                rule3: 'Acima de 18 anos',
              ),
              EventCard(
                eventName: 'Futeba de carro',
                game: 'Rocket League',
                playerCount: '5/5',
                eventTime: '13:30',
                imageUrl: 'images/games/rocket_league.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "5",
                maxPlayers: "5",
                tag1: 'FUTEBOL',
                tag2: 'CORRIDA',
                rule1: 'Futebol de carro',
                rule2: 'Vrum vrum',
                rule3: 'Gol',
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
                totalPlayers: "3",
                maxPlayers: "5",
                tag1: 'FUTEBOL',
                tag2: 'ONLINE',
                rule1: 'Boa comunicação',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
                private: true,
              ),
              EventCard(
                eventName: 'Paladins safado',
                game: 'Paladins',
                playerCount: '15',
                eventTime: '13:30',
                imageUrl: 'images/games/paladins.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "15",
                maxPlayers: "15",
                tag1: 'COMPETITIVO',
                tag2: 'FPS',
                rule1: 'Não jogar overwatch',
                rule2: 'Jogar no controle',
                rule3: 'Acima de 18 anos',
              ),
              EventCard(
                eventName: 'Grind no Destiny',
                game: 'Destiny 2',
                playerCount: '5/5',
                eventTime: '13:30',
                imageUrl: 'images/games/destiny_2.jpg',
                heroTag: getRandomString(5),
                totalPlayers: "5",
                maxPlayers: "5",
                tag1: 'RPG',
                tag2: 'FPS',
                rule1: 'Boneco com 3k de rating',
                rule2: 'Jogar com Discord',
                rule3: 'Acima de 18 anos',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
