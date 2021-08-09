import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/course%20projects/gami/lib/shared/constrains.dart';

class ReusableSettingColomn extends StatefulWidget {
  String headLineText;
  String explainingText;
  ReusableSettingColomn({
    required this.explainingText,
    required this.headLineText,
  });

  @override
  _ReusableSettingColomnState createState() => _ReusableSettingColomnState();
}

class _ReusableSettingColomnState extends State<ReusableSettingColomn> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.headLineText,
          style: kMedHeadlineTextStyle,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                widget.explainingText,
                style: kNormalTextStyle,
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 28,
        ),
      ],
    );
  }
}
