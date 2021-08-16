import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/screens/event_screen_done.dart';
import 'package:wp_arena_flutter/screens/event_screen.dart';

import '../constants.dart';

class EventCard extends StatelessWidget {
  EventCard({
    required this.eventName,
    required this.game,
    required this.playerCount,
    required this.eventTime,
    required this.imageUrl,
    required this.heroTag,
    required this.totalPlayers,
    required this.maxPlayers,
    required this.tag1,
    required this.tag2,
    required this.rule1,
    required this.rule2,
    required this.rule3,
    this.done = false,
    this.private = false,
  });

  final String eventName;
  final String game;
  final String playerCount;
  final String eventTime;
  final String imageUrl;
  final String heroTag;
  final String totalPlayers;
  final String maxPlayers;
  final String tag1;
  final String tag2;
  final String rule1;
  final String rule2;
  final String rule3;
  final bool done;
  final bool private;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          if (this.done) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventScreenDone(
                  heroTag: heroTag,
                  imageUrl: imageUrl,
                  eventName: eventName,
                  eventTime: eventTime,
                  playerCount: playerCount,
                  game: game,
                  totalPlayers: totalPlayers,
                  maxPlayers: maxPlayers,
                  tag1: tag1,
                  tag2: tag2,
                  rule1: rule1,
                  rule2: rule2,
                  rule3: rule3,
                  private: private,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventScreen(
                  heroTag: heroTag,
                  imageUrl: imageUrl,
                  eventName: eventName,
                  eventTime: eventTime,
                  playerCount: playerCount,
                  game: game,
                  tag1: tag1,
                  tag2: tag2,
                  rule1: rule1,
                  rule2: rule2,
                  rule3: rule3,
                  private: private,
                ),
              ),
            );
          }
        },
        child: Card(
          color: kGray,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Hero(
                    tag: heroTag,
                    child: Container(
                      child: Image.asset(imageUrl),
                      height: 60,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: SizedBox(
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              eventName,
                              style: kSubTextStyle,
                            ),
                            Text(
                              game,
                              style: kSubTextStyle,
                            ),
                            Text(
                              'Jogadores: ' + playerCount,
                              style: kSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      eventTime,
                      style: kSubTextStyle,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
