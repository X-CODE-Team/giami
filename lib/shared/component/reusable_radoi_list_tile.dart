import 'package:flutter/material.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';
import 'package:gami/shared/constrains.dart';

class ReusableRadio extends StatelessWidget {
  String text;
  var value;
  var groupVal;
  var onChange;
  dynamic type;
  ReusableRadio({
    required this.text,
    required this.value,
    required this.groupVal,
    required this.onChange,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: RadioListTile<dynamic>(
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        value: value,
        groupValue: groupVal,
        onChanged: onChange,
      ),
    );
  }
}
