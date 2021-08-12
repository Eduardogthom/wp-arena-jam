import 'package:flutter/material.dart';

import '../constants.dart';

class EventCard extends StatelessWidget {
  EventCard({
    required this.eventName,
    required this.game,
    required this.playerCount,
    required this.eventTime,
    required this.gameIcon,
  });

  final String eventName;
  final String game;
  final String playerCount;
  final String eventTime;
  final AssetImage gameIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        color: kGray,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: gameIcon,
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
    );
  }
}
