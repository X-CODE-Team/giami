import 'package:flutter/material.dart';
import 'package:gami/shared/component/reusable_setting_column.dart';
import 'package:gami/shared/constrains.dart';

class PrivacyEditingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.all(
              Radius.circular(10.0) //                 <--- border radius here
              ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy & Data',
                style: kHeadlineTextStyle,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Deceide whether your profile will be hidden from search engine and what kind of data you want to use to improve the recommendation and ads you see learn more',
                style: kExplainHeadLineTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              //search and privacy
              ReusableSettingColomn(
                headLineText: 'Search Privacy',
                explainingText:
                    'Hide your profile form search engine (EX.google) Learn More',
              ),
              Text(
                'Personalization',
                style: kHeadlineTextStyle,
              ),
              SizedBox(
                height: 28,
              ),
              ReusableSettingColomn(
                headLineText: 'Search Privacy',
                explainingText:
                    'Use sites you visit to improve which recommendation and ads you see',
              ),
              ReusableSettingColomn(
                headLineText: 'Search Privacy',
                explainingText:
                    'Use information from our partners to improve which ads you seeLearn more',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
