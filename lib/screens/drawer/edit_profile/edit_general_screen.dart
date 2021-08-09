import 'package:flutter/material.dart';
import 'package:gami/shared/component/default_rounded_button.dart';
import 'package:gami/shared/component/reusable_general_column.dart';
import 'package:gami/shared/component/reusable_switch_button.dart';
import 'package:gami/shared/constrains.dart';

class GeneralEditingScreen extends StatelessWidget {
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
              // main screen headline
              Text(
                'General Setting',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              // head line explaining text
              Text(
                'Set your login preference, help us personalize your experience and make big account change here.',
                style: kExplainHeadLineTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              //sub users setting
              ReusableGeneralColumn(
                explainingText: 'Enable this if you want people to follow you',
                headLineText: 'Sub User',
              ),
              //enable follow me
              ReusableGeneralColumn(
                explainingText: 'Enable this if you want people to follow you',
                headLineText: 'Enable follow me',
              ),
              // send notifications setting
              ReusableGeneralColumn(
                explainingText:
                    'Send me notifications emails my friends like, share or message me',
                headLineText: 'Send me notifications',
              ),
              // text message
              ReusableGeneralColumn(
                explainingText: 'Send me message to my cell phone',
                headLineText: 'Text messages',
              ),
              // tagging notifications
              ReusableGeneralColumn(
                explainingText: 'Enable my friends to tag me on their posts',
                headLineText: 'Enable tagging',
              ),
              Text(
                'Enable tagging',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),

              // save setting or cancel
              Row(
                children: [
                  DefaultRoundedButton(
                    onpress: () {},
                    text: '  Save  ',
                    isBorderd: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DefaultRoundedButton(
                    onpress: () {},
                    text: '  Cancel  ',
                    isBorderd: true,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // account changes
              Text(
                'Enable tagging',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hide Your Posts and profile',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  DefaultRoundedButton(
                    isBorderd: true,
                    text: 'Deactivate',
                    onpress: () {},
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Delete your account and data',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  DefaultRoundedButton(
                    isBorderd: false,
                    text: 'Close Account',
                    onpress: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
