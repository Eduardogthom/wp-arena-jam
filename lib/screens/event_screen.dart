import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_tag.dart';

import '../constants.dart';

class EventScreen extends StatefulWidget {
  static String id = 'event_screen';
  EventScreen(
      {required this.heroTag,
      required this.imageUrl,
      required this.eventName,
      required this.game,
      required this.playerCount,
      required this.eventTime});

  final String eventName;
  final String game;
  final String playerCount;
  final String eventTime;
  final String heroTag;
  final String imageUrl;
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Hero(
                tag: widget.heroTag,
                child: Image.asset(widget.imageUrl),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Row(
                  children: [
                    EventTag(),
                    SizedBox(
                      width: 15,
                    ),
                    EventTag(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.left,
                      text: new TextSpan(
                        style: kGreetingTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                            text: widget.eventName,
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      widget.game,
                      style: kSubTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.eventTime,
                          style: kSubTextStyle,
                        ),
                        Text(
                          '12/08/2021',
                          style: kSubTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.left,
                      text: new TextSpan(
                        style: kGreetingTextStyle,
                        children: <TextSpan>[
                          new TextSpan(
                            text: 'Regras',
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "• ",
                            style: kDefaultTextStyle,
                          ),
                          Expanded(
                            child: Text(
                              'Proibido xingamentos;',
                              style: kDefaultTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "• ",
                            style: kDefaultTextStyle,
                          ),
                          Expanded(
                            child: Text(
                              'Somente jogadores acima de 20 anos;',
                              style: kDefaultTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "• ",
                            style: kDefaultTextStyle,
                          ),
                          Expanded(
                            child: Text(
                              'Fazer amizades.',
                              style: kDefaultTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: kGreetingTextStyle,
                            children: <TextSpan>[
                              new TextSpan(
                                text: 'Jogadores',
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          widget.playerCount,
                          style: kGreetingTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        color: kGray,
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                            image: DecorationImage(
                              image: index == 0
                                  ? AssetImage("images/avatars/avatar.png")
                                  : AssetImage(
                                      "images/avatars/avatar_${index + 1}.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Buratti',
                                  style: kSubTextStyle,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.stars,
                                      color: kWhite,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '5.0',
                                      style: kSubTextStyle,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        child: new FloatingActionButton(
          elevation: 0.0,
          child: new Icon(
            Icons.arrow_back,
            size: 40,
          ),
          backgroundColor: Colors.transparent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
