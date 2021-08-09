import 'package:flutter/material.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';

class ReusableSwitchButton extends StatefulWidget {
  @override
  _ReusableSwitchButtonState createState() => _ReusableSwitchButtonState();
}

class _ReusableSwitchButtonState extends State<ReusableSwitchButton> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: Switch.adaptive(
        splashRadius: 15,
        activeColor: Colors.pinkAccent,
        value: status,
        onChanged: (value) {
          setState(() {
            status = value;
          });
        },
      ),
    );
  }
}
