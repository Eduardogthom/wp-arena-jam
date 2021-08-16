import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/avatar_button.dart';
import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/constants.dart';
import 'package:wp_arena_flutter/screens/event_game_screen.dart';
//import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key, required this.userName}) : super(key: key);
  static String id = 'game_screen';
  final String userName;

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
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
                              text: widget.userName,
                              style: new TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Que jogo vocẽ pretende jogar hoje?',
                        style: kSubTextStyle,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('images/users/user_1.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //Buscador
              Input(
                enabled: true,
                hintText: 'Buscar jogo',
                errorMessage: 'Por favor, digite o seu nome do usuário',
                prefixIcon: Icons.search,
              ),
              SizedBox(
                height: 24.0,
              ),
              //Lista de jogos
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 4.2,
                  children: [
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Call of Duty',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/cod.jfif',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/cod.jfif'),
                            labelText: "Call of Duty"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Battlefield 2042',
                                    playerCount: '5',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/battlefield.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/battlefield.jpg'),
                            labelText: "Battlefield 2042"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                          radius: 42,
                          labelText: 'Counter Strike',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Counter Strike: GO',
                                  playerCount: '1',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/csgo.jpg',
                                ),
                              ),
                            );
                          },
                          foregroundImage: AssetImage('images/games/csgo.jpg'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Dark Souls 3',
                                    playerCount: '3',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/dark_souls_3.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/dark_souls_3.jpg'),
                            labelText: "Dark Souls 3"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Destiny 2',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/destiny_2.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/destiny_2.jpg'),
                            labelText: "Destiny 2"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Fifa',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/fifa.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/fifa.jpg'),
                            labelText: "Fifa"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Five Nights at Freddys',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/five_nights.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/five_nights.jpg'),
                            labelText: "Five Nights at Freddys"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Forsaken World',
                                    playerCount: '5',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/forsaken_world.png',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/forsaken_world.png'),
                            labelText: "Forsaken World"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Fornite',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/fortnite.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/fortnite.jpg'),
                            labelText: "Fortnite"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Genshin Impact',
                                    playerCount: '1',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/genshin_Impact.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/genshin_Impact.jpg'),
                            labelText: "Genshin Impact"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Heroes of the Storm',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/hos.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage: AssetImage('images/games/hos.jpg'),
                            labelText: "Heroes of the Storm"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Left 4 Dead 2',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/l4d.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage: AssetImage('images/games/l4d.jpg'),
                            labelText: "Left 4 Dead"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'League of Legends',
                                    playerCount: '5',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/lol.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage: AssetImage('images/games/lol.jpg'),
                            labelText: "League of Legends"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Ludo',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/ludo.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/ludo.jpg'),
                            labelText: "Ludo"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Minecraft',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/minecraft.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/minecraft.jpg'),
                            labelText: "Minecraft"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Monster Hunter World',
                                    playerCount: '3',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/monster_hunter.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/monster_hunter.jpg'),
                            labelText: "Monster Hunter"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'New World',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/new_world.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/new_world.jpg'),
                            labelText: "New World"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Overwatch',
                                    playerCount: '1',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/overwatch.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/overwatch.jpg'),
                            labelText: "Overwatch"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Paladins',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/paladins.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/paladins.jpg'),
                            labelText: "Paladins"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'PES 2021',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/pes.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage: AssetImage('images/games/pes.jpg'),
                            labelText: "PES"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Pokémon GO',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/pokemon_go.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/pokemon_go.jpg'),
                            labelText: "Pokemon GO"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'PUBG',
                                    playerCount: '2',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/pubg.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/pubg.jpg'),
                            labelText: "PUBG"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Roblox',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/roblox.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/roblox.jpg'),
                            labelText: "Roblox"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Rocket League',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/rocket_league.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/rocket_league.jpg'),
                            labelText: "Rocket League"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'Runescape',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/runescape.jfif',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/runescape.jfif'),
                            labelText: "Runescape"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'TeamFight Tactics',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/tft.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage: AssetImage('images/games/tft.jpg'),
                            labelText: "Teamfight Tatics"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'The Ants',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/the_ants.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/the_ants.jpg'),
                            labelText: "The Ants"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'COD: Warzone',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/warzone.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage:
                                AssetImage('images/games/warzone.jpg'),
                            labelText: "COD: Warzone"),
                      ],
                    ),
                    Column(
                      children: [
                        AvatarButton(
                            radius: 42,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventGame(
                                    userName: widget.userName,
                                    eventName: 'Partida com os cria',
                                    game: 'World of Warcraft',
                                    playerCount: '4',
                                    eventTime: '13:30',
                                    imageUrl: 'images/games/wow.jpg',
                                  ),
                                ),
                              );
                            },
                            foregroundImage: AssetImage('images/games/wow.jpg'),
                            labelText: "World of Warcraft"),
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
        screenName: 'game',
        userName: widget.userName,
      ),
    );
  }
}
