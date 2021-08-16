import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/screens/login_screen.dart';
import 'package:wp_arena_flutter/screens/schedule_match_screen.dart';
import 'package:wp_arena_flutter/screens/sign_in_screen.dart';

void main() {
  runApp(WPArena());
}

class WPArena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        //ProfileScreen.id: (context) => ProfileScreen(),
        ScheduleMatchScreen.id: (context) => ScheduleMatchScreen(),
        // GameScreen.id: (context) => GameScreen(),
      },
    );
  }
}
