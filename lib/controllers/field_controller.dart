import 'package:get/get.dart';
// import 'package:flutter/material.dart';

class FieldController extends GetxController {
  static FieldController get instance => Get.find<FieldController>();

  // full name
  final RxString fullName = 'Papa Kofi Boahen'.obs;

  // Slack Username
  final RxString slackUsername = 'Papa Kofi Boahen'.obs;

  // GitHub username
  final RxString gitHubUsername = 'Boahen123'.obs;

  // Personal bio
  final RxString personalBio =
      'I am a software developer with a passion for building mobile and web applications with flutter. I am currently the Google Developer Student Lead at Academic City University, Accra, Ghana where I am pursuing a BSc in Computer Engineering.'
          .obs;

  void modifyFullname(String newFullname) {
    // access new text from the input field controller
    fullName.value = newFullname;
  }

  void modifySlackUsername(String newSlackusername) {
    slackUsername.value = newSlackusername;
  }

  void modifyGitHubUsername(String newGitHubUsername) {
    gitHubUsername.value = newGitHubUsername;
  }

  void modifyPersonalBio(String newPersonalBio) {
    personalBio.value = newPersonalBio;
  }

  String? fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'field cannot be empty';
    }
    return null;
  }
}
