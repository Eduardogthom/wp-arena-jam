import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/event_tag.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';

class EventScreenDone extends StatefulWidget {
  static String id = 'event_screen_done';
  EventScreenDone({
    required this.heroTag,
    required this.imageUrl,
    required this.eventName,
    required this.game,
    required this.playerCount,
    required this.eventTime,
    required this.totalPlayers,
    required this.maxPlayers,
    required this.tag1,
    required this.tag2,
    required this.rule1,
    required this.rule2,
    required this.rule3,
    this.private = false,
  });

  final String eventName;
  final String game;
  final String playerCount;
  final String eventTime;
  final String heroTag;
  final String imageUrl;
  final String totalPlayers;
  final String maxPlayers;
  final String tag1;
  final String tag2;
  final String rule1;
  final String rule2;
  final String rule3;
  final bool private;

  @override
  _EventScreenDoneState createState() => _EventScreenDoneState();
}

class _EventScreenDoneState extends State<EventScreenDone> {
  void openModal() {
    double _rating1 = 0;
    double _rating2 = 0;
    bool _isDisabled = true;

    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: kBlack,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Avaliar Matheus',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Comportamento",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: RatingBar.builder(
                    initialRating: 0.5,
                    minRating: 0.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    glowColor: Colors.transparent,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    unratedColor: kGrayAlt,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: kWhite,
                    ),
                    onRatingUpdate: (rating) {
                      _rating1 = rating;
                      if (_rating2 > 0) {
                        setState(() {
                          _isDisabled = false;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Desempenho",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: RatingBar.builder(
                    initialRating: 0.5,
                    minRating: 0.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    glowColor: Colors.transparent,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    unratedColor: kGrayAlt,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: kWhite,
                    ),
                    onRatingUpdate: (rating) {
                      _rating2 = rating;
                      if (_rating1 > 0) {
                        setState(() {
                          _isDisabled = false;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          'Cancelar',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                        style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5);
                              else if (states.contains(MaterialState.disabled))
                                return kGray;
                              return kBlack; // Use the component's default.
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          'Enviar',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5);
                              else if (states.contains(MaterialState.disabled))
                                return kGray;
                              return kBlack; // Use the component's default.
                            },
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
                    EventTag(
                      tagName: widget.tag1,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    EventTag(
                      tagName: widget.tag2,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    if (widget.private) EventTag(tagName: "Privado")
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
                            style: kDefaultRuleStyle,
                          ),
                          Expanded(
                            child: Text(
                              widget.rule1 + ';',
                              style: kDefaultRuleStyle,
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
                            style: kDefaultRuleStyle,
                          ),
                          Expanded(
                            child: Text(
                              widget.rule2 + ';',
                              style: kDefaultRuleStyle,
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
                            style: kDefaultRuleStyle,
                          ),
                          Expanded(
                            child: Text(
                              widget.rule3 + '.',
                              style: kDefaultRuleStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
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
                              text: 'Links',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Text(
                          'Convite: https://wp-arena.com/invite/112665',
                          style: kDefaultRuleStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Text(
                          'Assistir: https://twitch.tv/wp-arena/' + widget.game,
                          style: kDefaultRuleStyle,
                        ),
                      ),
                    ],
                  ),
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
                                text: 'Avaliar Jogadores',
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "0" + "/" + widget.totalPlayers,
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
                    itemCount: int.parse(widget.totalPlayers),
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        color: kGray,
                        child: InkWell(
                          onTap: () => openModal(),
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
