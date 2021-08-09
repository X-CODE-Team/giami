import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  TextEditingController textController;
  String hint;
  bool isExplaining;
  DefaultTextField({
    required this.textController,
    this.hint = '',
    this.isExplaining = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: !isExplaining ? 35 : 50,
      child: TextField(
        controller: textController,
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            filled: true,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            hintText: hint,
            fillColor: Colors.white70),
      ),
    );
  }
}
