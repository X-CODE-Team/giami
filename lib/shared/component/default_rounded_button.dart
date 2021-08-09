import 'package:flutter/material.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';

class DefaultRoundedButton extends StatelessWidget {
  bool isBorderd;
  String text;
  var onpress;
  DefaultRoundedButton({
    this.isBorderd = false,
    required this.text,
    required this.onpress,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 20,
      onPressed: onpress,
      color: !isBorderd ? Colors.pinkAccent : Colors.white,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: !isBorderd ? Colors.white : Colors.pinkAccent,
        ),
      ),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(25.0),
        side: BorderSide(color: Colors.pinkAccent),
      ),
    );
  }
}
