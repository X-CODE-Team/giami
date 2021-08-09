import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';
import 'package:gami/layout/edit_profile_layout/cubit/states.dart';
import 'package:gami/shared/component/reusable_drop_button.dart';
import 'package:gami/shared/component/reusable_radoi_list_tile.dart';
import 'package:gami/shared/constrains.dart';

class EditNotificationsScreen extends StatelessWidget {
  List<String> languages = [
    'English US',
    'العربيه',
    'English',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileLayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.all(Radius.circular(
                      10.0) //                 <--- border radius here
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
                  // main screen head line
                  Text(
                    'Notifications Settings',
                    style: kHeadlineTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // head line explaining text
                  Text(
                    'Select push and email notifications you\'d like to receive',
                    style: kExplainHeadLineTextStyle,
                  ),
                  // push notifications an emails options
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ReusableRadio(
                      text:
                          'Send Me emails about my activity except emails i have unsubscribe from',
                      value: PushEmailNotification.SendEmail,
                      groupVal: EditProfileCubit.get(context).selectedPush,
                      onChange: (value) {
                        EditProfileCubit.get(context)
                            .changePushNotifications(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ReusableRadio(
                      text: 'Only send me required services announcements',
                      value: PushEmailNotification.SendServices,
                      groupVal: EditProfileCubit.get(context).selectedPush,
                      onChange: (value) {
                        EditProfileCubit.get(context)
                            .changePushNotifications(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'I\'d like to receive emails and update from Giami about',
                      style: kExplainHeadLineTextStyle,
                    ),
                  ),
                  Text(
                    'Always General announcement, update, posts and videos, Personalize tips for mu pagge Announcements and recommendations,',
                    style: kMedHeadlineTextStyle,
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Text(
                          'learn more  ',
                          style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onTap: () {},
                      ),
                      Expanded(
                        child: Text(
                          'about emails from Giami',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Other Notifications',
                    style: kExplainHeadLineTextStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Recommended videos. activity on my page or channel. Activity on my comments. Reply to comments. Mentions.',
                    style: kMedHeadlineTextStyle,
                  ),
                  Text(
                    'Language Preference',
                    style: kExplainHeadLineTextStyle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Select your email Language',
                    style: kExplainHeadLineTextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: 120,
                      child: ReusableDropButton(
                        optionsList: languages,
                        dropValue:
                            EditProfileCubit.get(context).selectedLanguage,
                        hintTitle: 'select language',
                        onChange: (String? value) {
                          EditProfileCubit.get(context)
                              .changeSelectedLanguage(value);
                        },
                      ),
                    ),
                  ),
                  Text(
                    'you will always get notifications you have turned on for individual Manage All Subscriptions',
                    style: kNormalTextStyle,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
