import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.hintText,
    required this.errorMessage,
    this.prefixIcon,
  }) : super(key: key);

  final String hintText;
  final String errorMessage;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: kWhite),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        // contentPadding: EdgeInsets.all(0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBlue, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kWhite, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        hintStyle: TextStyle(
          color: kWhite,
        ),
        hintText: hintText,
        prefixIcon: Icon(
          prefixIcon,
          color: kWhite,
          size: 20,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }
}
