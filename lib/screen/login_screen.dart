import 'package:flutter/material.dart';
import 'package:xo_game/model/model.dart';
import 'package:xo_game/screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'Login';
  String player1Args = '';
  String player2Args = '';

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'X - O',
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              onChanged: (value) {
                player1Args = value;
              },
              cursorColor: Colors.pinkAccent,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20), gapPadding: 8),
                hintText: 'Enter Name Player one',
                label: const Text('Player one'),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                player2Args = value;
              },
              cursorColor: Colors.pinkAccent,
              decoration: InputDecoration(
                focusColor: Colors.pinkAccent,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Enter Name Player Two',
                label: const Text('Player Two'),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  HomeScreen.routeName,
                  arguments: XoGamesArgs(
                    player1Args: player1Args,
                    player2Args: player2Args,
                  ),
                );
              },
              color: Colors.pinkAccent,
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
