import 'package:flutter/material.dart';

void navigateTo({required context, required nextScreen}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => nextScreen,
      ));
}
