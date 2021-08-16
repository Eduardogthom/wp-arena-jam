import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';
import 'package:wp_arena_flutter/screens/home_screen.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {Key? key,
      required this.formKey,
      this.buttonColor,
      required this.userName,
      required this.labelText})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final Color? buttonColor;
  final String labelText;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 450,
      child: ElevatedButton(
      style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0)),
        onPressed: () => {
          if (formKey.currentState!.validate())
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                    userName: userName,
                  ),
                ),
              ),
            }
        },
        child: Text(
          labelText,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
          child: Ink(
              width: 450,
              height: 48,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [kPink, kBlue]),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  labelText,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ))),
    );
  }
}
