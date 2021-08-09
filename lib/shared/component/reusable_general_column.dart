import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/course%20projects/gami/lib/shared/constrains.dart';
import 'package:gami/shared/component/reusable_switch_button.dart';

class ReusableGeneralColumn extends StatelessWidget {
  String headLineText;
  String explainingText;
  ReusableGeneralColumn({
    required this.explainingText,
    required this.headLineText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headLineText,
          style: kMedHeadlineTextStyle,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                explainingText,
                style: kNormalTextStyle,
              ),
            ),
            ReusableSwitchButton(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
