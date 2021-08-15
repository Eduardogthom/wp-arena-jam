import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/screens/game_screen.dart';
import 'package:wp_arena_flutter/screens/login_screen.dart';

import 'screens/home_screen.dart';

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
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        GameScreen.id: (context) => GameScreen(),
        // RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
