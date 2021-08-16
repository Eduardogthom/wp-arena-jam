import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';

class AvatarButton extends StatelessWidget {
  const AvatarButton({
    Key? key,
    required this.onTap,
    required this.foregroundImage,
    required this.labelText,
    this.radius,
  }) : super(key: key);

  final Function()? onTap;
  final AssetImage foregroundImage;
  final String labelText;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(45),
          onTap: onTap,
          child: CircleAvatar(
            foregroundImage: foregroundImage,
            radius: radius ?? 45.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            labelText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhite,
            ),
          ),
        )
      ],
    );
  }
}
