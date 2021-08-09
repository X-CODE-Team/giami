import 'package:flutter/material.dart';
import 'package:gami/layout/edit_profile_layout/edit_profile_layout.dart';
import 'package:gami/screens/drawer/create_group_screen.dart';
import 'package:gami/screens/drawer/create_page_group_screen.dart';
import 'package:gami/screens/drawer/edit_profile/edit_profile_screen.dart';
import 'package:gami/screens/drawer/inbox_screen.dart';
import 'package:gami/screens/drawer/lock_screen.dart';
import 'package:gami/screens/drawer/notifications_screen.dart';
import 'package:gami/screens/drawer/privacy_help_screen.dart';
import 'package:gami/shared/component/navigate_to.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      color: Colors.pinkAccent,
                      size: 25,
                    ),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/62/3a/a8/623aa8f9933ee9a286871bf6e0782538.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 0,
                          child: Container(
                            constraints: BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hamza Ahmed',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'View Profile',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //inbox list Title
          ReusableListTitle(
            icon: Icons.archive_outlined,
            titleText: 'InBox',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: InboxScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          //notifications list Title
          ReusableListTitle(
            icon: Icons.notifications_none,
            titleText: 'Notifications',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: NotificationsScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),

          // edit profile list Title
          ReusableListTitle(
            icon: Icons.edit_location_outlined,
            titleText: 'Edit Profile',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: EditProfileLayout(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          //lock screen list Title
          ReusableListTitle(
            icon: Icons.vpn_key_outlined,
            titleText: 'Lock Screen',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: LockScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          //Setting list Title
          ReusableListTitle(
            icon: Icons.settings_cell,
            titleText: 'Setting',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: EditProfileLayout(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          // Privacy & Help Title
          ReusableListTitle(
            icon: Icons.privacy_tip_outlined,
            titleText: 'Privacy & Help',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: PrivacyHelpScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          // Create Page list Title
          ReusableListTitle(
            icon: Icons.create_outlined,
            titleText: 'Create Page',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: CreatePageGroupScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          // Create Group list Title
          ReusableListTitle(
            icon: Icons.group_work_outlined,
            titleText: 'Create Group',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: CreatePageGroupScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),

          // logout list Title
          ReusableListTitle(
            icon: Icons.logout,
            titleText: 'Logout',
            onPress: () {
              navigateTo(
                context: context,
                nextScreen: CreatePageGroupScreen(),
              );
            },
          ),
          SeparatorDrawerContainer(),
          // night mode list title
          ListTile(
            leading: Icon(
              Icons.nights_stay_outlined,
            ),
            title: Row(
              children: [
                Text('Night Mode'),
                Spacer(),
                Switch.adaptive(
                  activeColor: Colors.pinkAccent,
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableListTitle extends StatelessWidget {
  IconData icon;
  String titleText;
  var onPress;
  ReusableListTitle({
    required this.icon,
    required this.titleText,
    required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(titleText),
      onTap: onPress,
    );
  }
}

class SeparatorDrawerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: 1,
    );
  }
}
