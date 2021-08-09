import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';
import 'package:gami/layout/edit_profile_layout/cubit/states.dart';
import 'package:gami/shared/component/default_form_text_field.dart';
import 'package:gami/shared/component/default_rounded_button.dart';
import 'package:gami/shared/component/reusable_circle_avatar.dart';
import 'package:gami/shared/component/reusable_drop_button.dart';
import 'package:gami/shared/component/reusable_radoi_list_tile.dart';
import 'package:gami/shared/constrains.dart';

class EditProfileScreen extends StatelessWidget {
  var nameController = TextEditingController(text: 'Hamza Ahmed');
  var userNameController = TextEditingController(text: 'hamza1234');
  var emailController = TextEditingController(text: 'hamza@gmail.com');
  var aboutProfileController = TextEditingController();
  var locationController = TextEditingController();

  List<String> countries = ['Egypt', 'Palestine', 'United States'];
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
              borderRadius: BorderRadius.all(
                Radius.circular(
                    10.0), //                 <--- border radius here
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
                    'Edit Profile',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'People on Giami will get to know you the info below',
                      style: kExplainHeadLineTextStyle,
                    ),
                  ),

                  // profile pic
                  Row(
                    children: [
                      ReusableCircleAvatar(
                        radius: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Change DP',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // display name
                  Text(
                    'Display Name',
                    style: kExplainHeadLineTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: DefaultTextField(
                      textController: nameController,
                    ),
                  ),
                  // user name textfield
                  Text(
                    'User Name',
                    style: kExplainHeadLineTextStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'www.giami.com/',
                    style: kMedHeadlineTextStyle,
                  ),
                  Container(
                    width: 170,
                    child: DefaultTextField(
                      textController: userNameController,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // email textfield
                  Text(
                    'Email Address',
                    style: kMedHeadlineTextStyle,
                  ),
                  DefaultTextField(
                    textController: emailController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //select gender
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  ReusableRadio(
                    text: 'Male',
                    value: SingingGender.Male,
                    groupVal: EditProfileCubit.get(context).selectedGender,
                    onChange: (value) {
                      EditProfileCubit.get(context)
                          .changeSelectedGender(value!);
                    },
                  ),
                  ReusableRadio(
                    text: 'Female',
                    value: SingingGender.Female,
                    groupVal: EditProfileCubit.get(context).selectedGender,
                    onChange: (value) {
                      EditProfileCubit.get(context)
                          .changeSelectedGender(value!);
                    },
                  ),
                  ReusableRadio(
                    text: 'Custom',
                    value: SingingGender.Custom,
                    groupVal: EditProfileCubit.get(context).selectedGender,
                    onChange: (value) {
                      EditProfileCubit.get(context)
                          .changeSelectedGender(value!);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // about your profile
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'about your profile',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'write something about yourself',
                      fillColor: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // location
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  DefaultTextField(
                    textController: locationController,
                    hint: 'Ex,San Francisco,CA',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //country
                  // location
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Country',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ReusableDropButton(
                    optionsList: countries,
                    dropValue: EditProfileCubit.get(context).selectedCountry,
                    hintTitle: 'select country',
                    onChange: (String? value) {
                      EditProfileCubit.get(context)
                          .changeCurrentCountry(value!);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
