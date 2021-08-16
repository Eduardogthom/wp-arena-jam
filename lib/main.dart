import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/screens/game_screen.dart';
import 'package:wp_arena_flutter/screens/login_screen.dart';
import 'package:wp_arena_flutter/screens/profile_screen.dart';
import 'package:wp_arena_flutter/screens/schedule_match_screen.dart';
import 'package:wp_arena_flutter/screens/sign_in_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(WPArena());
}

class WPArena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      initialRoute: SignInScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        ScheduleMatchScreen.id: (context) => ScheduleMatchScreen(),
        GameScreen.id: (context) => GameScreen(),
      },
    );
  }
}
