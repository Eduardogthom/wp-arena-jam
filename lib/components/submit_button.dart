import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {Key? key,
      required this.formKey,
      this.buttonColor,
      required this.labelText})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final Color? buttonColor;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 450,
      child: ElevatedButton(
        onPressed: () => {
          if (formKey.currentState!.validate())
            {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Navigate!')),
              )
            }
        },
        child: Text(
          labelText,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return buttonColor ?? kPink;
            },
          ),
        ),
      ),
    );
  }
}
