import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.hintText,
    required this.errorMessage,
    required this.enabled,
    this.maxLines,
    this.prefixIcon,
  }) : super(key: key);

  final String hintText;
  final String errorMessage;
  final IconData? prefixIcon;
  final bool enabled;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      enabled: enabled,
      style: TextStyle(
        color: kWhite,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
      decoration: InputDecoration(
        isDense: true,
        filled: !enabled,
        fillColor: Color.fromRGBO(196, 196, 196, 0.2),
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
        disabledBorder: OutlineInputBorder(
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
          color: enabled ? kWhite : kGray,
          fontSize: 14,
        ),
        hintText: hintText,
        prefixIconConstraints: prefixIcon == null
            ? BoxConstraints(
                minHeight: 48,
                // minWidth: 0,
              )
            : null,
        prefixIcon: Icon(
          prefixIcon,
          color: enabled ? kWhite : kGray,
          size: 20,
        ),
      ),
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          return errorMessage;
        }
        return null;
      },
    );
  }
}
