import 'package:flutter/material.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';

class ReusableRoundedButton extends StatelessWidget {
  int index;
  String text;
  var onpress;
  ReusableRoundedButton({
    required this.text,
    required this.index,
    required this.onpress,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 20,
      onPressed: onpress,
      color: index == EditProfileCubit.get(context).currentIndex
          ? Colors.pinkAccent
          : Colors.grey[200],
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: index == EditProfileCubit.get(context).currentIndex
              ? Colors.white
              : Colors.black,
        ),
      ),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
    );
  }
}
