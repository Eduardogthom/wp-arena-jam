import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SafeArea(
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
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold)),
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
                  Card(
                    color: kGray,
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage:
                                  AssetImage('images/games/tft.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
