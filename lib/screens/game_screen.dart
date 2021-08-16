import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                height: 20.0,
              ),
              //Lista de jogos
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 4,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/cod.jfif'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Call of Duty',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/battlefield.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/battlefield.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Battlefield 2042',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/csgo.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/csgo.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Counter Strike Global Offensive',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/dark_souls_3.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/dark_souls_3.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Dark Souls 3',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/destiny_2.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/destiny_2.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Destiny 2',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/fifa.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/fifa.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Fifa',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/five_nights.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/five_nights.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Five Nights of Freddys',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/forsaken_world.png'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/forsaken_world.png',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Forsaken World',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/fortnite.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/fortnite.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Fornite',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/genshin_Impact.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/genshin_Impact.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Genshin Impact',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/hos.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/hos.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Heroes of the Storm',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/l4d.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/l4d.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Left 4 Dead 2',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/lol.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/lol.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'League of Legends',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/ludo.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/ludo.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Ludo',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/minecraft.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/minecraft.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Minecraft',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/monster_hunter.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/monster_hunter.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'Monster Hunter World',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/new_world.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventGame(
                                  userName: widget.userName,
                                  eventName: 'Partida com os cria',
                                  game: 'Call of Duty',
                                  playerCount: '4',
                                  eventTime: '13:30',
                                  imageUrl: 'images/games/new_world.jpg',
                                ),
                              ),
                            ),
                          },
                          child: Text(
                            'New World',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/overwatch.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Overwatch',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/paladins.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Paladins',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/pes.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'PES 2021',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/pokemon_go.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Pokémon GO',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/pubg.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'PUBG',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/roblox.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Roblox',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/rocket_league.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Rocket League',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/runescape.jfif'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'Runescape',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/tft.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'TeamFight Tactics',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/the_ants.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'The Ants',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage('images/games/warzone.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'COD: Warzone',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/wow.jpg'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {
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
                            ),
                          },
                          child: Text(
                            'World of Warcraft',
                            style: kSubTextStyle,
                            textAlign: TextAlign.center,
                          ),
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
        screenName: 'game',
        userName: widget.userName,
      ),
    );
  }
}
