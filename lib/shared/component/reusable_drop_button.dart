import 'package:flutter/material.dart';

class ReusableDropButton extends StatelessWidget {
  List<String> optionsList;
  String dropValue;
  var onChange;
  String hintTitle;
  ReusableDropButton({
    required this.optionsList,
    required this.dropValue,
    required this.onChange,
    required this.hintTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: DropdownButtonFormField(
        items: optionsList.map(
          (String country) {
            return DropdownMenuItem(
              child: Text(country),
              value: country,
            );
          },
        ).toList(),
        value: dropValue,
        onChanged: onChange,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          hintText: hintTitle,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
