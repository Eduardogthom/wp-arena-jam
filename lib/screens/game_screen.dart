import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';
import 'package:wp_arena_flutter/constants.dart';
//import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);
  static String id = 'game_screen';

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
                              text: 'Gustavo',
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
              CupertinoSearchTextField(
                backgroundColor: kGray,
                placeholder: 'Buscar jogo',
              ),
              SizedBox(
                height: 20.0,
              ),
              //Lista de jogos
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage('images/games/cod.jfif'),
                          radius: 40.0,
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: Text(
                            'Call of Duty',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Battlefield 2042',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Counter Strike Global Offensive',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Dark Souls 3',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Destiny 2',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Fifa',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Five Nights of Freddys',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Forsaken World',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Fornite',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Genshin Impact',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Heroes of the Storm',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Left 4 Dead 2',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'League of Legends',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Ludo',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Minecraft',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Monster Hunter World',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'New World',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Overwatch',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Paladins',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'PES 2021',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Pokémon GO',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'PUBG',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Roblox',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Rocket League',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'Runescape',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'TeamFight Tactics',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'The Ants',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'COD: Warzone',
                            style: kSubTextStyle,
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
                          onPressed: () => {},
                          child: Text(
                            'World of Warcraft',
                            style: kSubTextStyle,
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
      ),
    );
  }
}
