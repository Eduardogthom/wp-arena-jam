import 'package:flutter/material.dart';
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
      home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        // RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
