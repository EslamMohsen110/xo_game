import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  int index;
  Function onPress;

  ButtonWidget({
    super.key,
    required this.text,
    required this.index,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: MaterialButton(
        color: Colors.pinkAccent,
        elevation: 10,
        splashColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        onPressed: () {
          onPress(index);
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 45,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
