import 'package:flutter/material.dart';

import '../constants.dart';

class EventTag extends StatelessWidget {
  const EventTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kWhite),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Text(
          'ONLINE',
          style: kSubTextStyle,
        ),
      ),
    );
  }
}
