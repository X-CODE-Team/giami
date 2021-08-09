import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gami/layout/edit_profile_layout/cubit/states.dart';
import 'package:flutter/material.dart';

enum SingingGender { Male, Female, Custom }
enum PushEmailNotification { SendEmail, SendServices }
enum SigningPrivacy { Public, Private }

class EditProfileCubit extends Cubit<EditProfileLayoutStates> {
  EditProfileCubit() : super(InitialEditingState());

  static EditProfileCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  SingingGender? selectedGender = SingingGender.Male;
  PushEmailNotification? selectedPush = PushEmailNotification.SendEmail;
  SigningPrivacy? selectedPrivacy = SigningPrivacy.Public;

  String selectedLanguage = 'English US';
  String selectedCountry = 'United States';
  String selectedCreatedType = 'Page';
  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeEditingState());
  }

  void changeSelectedCreatedType(value) {
    selectedCreatedType = value;
    emit(ChangeSelectedCreatedType());
  }

  // change value of drop button of country options
  void changeCurrentCountry(count) {
    selectedCountry = count;
    emit(ChangeCurrentLanguageState());
  }

// change value of drop button of language options
  void changeSelectedLanguage(lang) {
    selectedLanguage = lang;
    emit(ChangeCurrentLanguageState());
  }

// change value of radio button of selected gender in edit profile screen
  void changeSelectedGender(SingingGender char) {
    selectedGender = char;
    emit(ChangeGenderRadioButtonState());
  }

// change value of radio button of selected privacy  create page/group screen
  void changeSelectedPrivacy(SigningPrivacy char) {
    selectedPrivacy = char;
    emit(ChangePrivacyRadioButtonState());
  }

// change value of radio button of push notifications screen
  void changePushNotifications(PushEmailNotification char) {
    selectedPush = char;
    emit(ChangePushNotificationsRadioButtonState());
  }
}
