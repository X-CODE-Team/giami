import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';
import 'package:gami/layout/edit_profile_layout/cubit/states.dart';
import 'package:gami/screens/drawer/drawer_screen.dart';
import 'package:gami/shared/component/default_form_text_field.dart';
import 'package:gami/shared/component/default_rounded_button.dart';
import 'package:gami/shared/component/reusable_drop_button.dart';
import 'package:gami/shared/component/reusable_radoi_list_tile.dart';
import 'package:gami/shared/constrains.dart';

class CreatePageGroupScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var suggestNameController = TextEditingController();
  var urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileLayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return BlocConsumer<EditProfileCubit, EditProfileLayoutStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.grey),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios_outlined),
                  onPressed: () {},
                ),
                title: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.add_photo_alternate_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.list_sharp),
                    onPressed: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                ],
              ),
              endDrawer: Drawer(
                child: DrawerScreen(),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    // pink container
                    Container(
                      color: Colors.pinkAccent,
                      width: double.infinity,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Create Page/Group',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Create New/Blog',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
//headline screen
                          Text(
                            'Create New Favourite Page Or Group With In A Minute',
                            style: kHeadlineTextStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Create:',
                            style: kMedHeadlineTextStyle,
                          ),
                          Container(
                            width: 130,
                            child: ReusableDropButton(
                              optionsList: ['Page', 'Group'],
                              dropValue: EditProfileCubit.get(context)
                                  .selectedCreatedType,
                              onChange: (value) {
                                EditProfileCubit.get(context)
                                    .changeSelectedCreatedType(value);
                              },
                              hintTitle: 'Page or Group',
                            ),
                          ),
                          DefaultTextField(
                            textController: suggestNameController,
                            hint: 'Suggested Name',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Container(
                              width: 130,
                              child: ReusableDropButton(
                                optionsList: ['Page', 'Group'],
                                dropValue: EditProfileCubit.get(context)
                                    .selectedCreatedType,
                                onChange: (value) {
                                  EditProfileCubit.get(context)
                                      .changeSelectedCreatedType(value);
                                },
                                hintTitle: 'Page or Group',
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Upload Avatar',
                                  style: TextStyle(color: Colors.pinkAccent),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Upload Cover Photo',
                              style: TextStyle(color: Colors.pinkAccent),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DefaultTextField(
                            hint: 'WebSite URL',
                            textController: urlController,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Select Privacy',
                            style: kMedHeadlineTextStyle,
                          ),
                          Text(
                            'Hide your posts, photos, and videos (Ex.google) Learn more',
                            style: kNormalTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ReusableRadio(
                            text: 'Public',
                            value: SigningPrivacy.Public,
                            groupVal:
                                EditProfileCubit.get(context).selectedPrivacy,
                            onChange: (value) {
                              EditProfileCubit.get(context)
                                  .changeSelectedPrivacy(value!);
                            },
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ReusableRadio(
                            text: 'Private',
                            value: SigningPrivacy.Private,
                            groupVal:
                                EditProfileCubit.get(context).selectedPrivacy,
                            onChange: (value) {
                              EditProfileCubit.get(context)
                                  .changeSelectedPrivacy(value!);
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            child: DefaultRoundedButton(
                              text: 'Create Now',
                              onpress: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: BottomAppBar(
                color: Colors.pink[50],
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.message_rounded,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.perm_identity_outlined,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.pinkAccent,
                onPressed: () {},
                child: Icon(
                  Icons.list_rounded,
                  size: 35,
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            );
          },
        );
      },
    );
  }
}
