import 'package:cv_application/controllers/field_controller.dart';
import 'package:cv_application/widgets/edit_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: 'FormKey');
  final FieldController fieldController = FieldController.instance;

  late TextEditingController fullNameController;
  late TextEditingController githubUsernameController;
  late TextEditingController slackUsernameController;
  late TextEditingController personalBioController;

  @override
  void initState() {
    super.initState();
    fullNameController =
        TextEditingController(text: fieldController.fullName.value);
    githubUsernameController =
        TextEditingController(text: fieldController.gitHubUsername.value);
    slackUsernameController =
        TextEditingController(text: fieldController.slackUsername.value);
    personalBioController =
        TextEditingController(text: fieldController.personalBio.value);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const EditHeader(),
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 2.0,
        ),
        body: SafeArea(
            child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("Make changes to any field",
                            style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFormField(
                      controller: fullNameController,
                      decoration: const InputDecoration(labelText: 'Full Name'),
                      validator: (value) {
                        String? output = fieldController.fieldValidator(value);
                        return output;
                      },
                      onChanged: (value) {
                        fieldController.modifyFullname(value);
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFormField(
                      controller: githubUsernameController,
                      decoration:
                          const InputDecoration(labelText: 'GitHub Username'),
                      validator: (value) {
                        String? output = fieldController.fieldValidator(value);
                        return output;
                      },
                      onChanged: (value) {
                        fieldController.modifyGitHubUsername(value);
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFormField(
                      controller: slackUsernameController,
                      decoration:
                          const InputDecoration(labelText: 'Slack Username'),
                      validator: (value) {
                        String? output =
                            FieldController.instance.fieldValidator(value);
                        return output;
                      },
                      onChanged: (value) {
                        fieldController.modifySlackUsername(value);
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFormField(
                      controller: personalBioController,
                      decoration:
                          const InputDecoration(labelText: 'Personal Bio'),
                      maxLines: 6, // Allow multiple lines for bio
                      validator: (value) {
                        String? output = fieldController.fieldValidator(value);
                        return output;
                      },
                      onChanged: (value) {
                        fieldController.modifyPersonalBio(value);
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors
                              .black), // set the background color of the button
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(color: Colors.white)),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal:
                                      30.0)), // set the padding of the button
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)))),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          fieldController
                              .modifyFullname(fullNameController.text);
                          fieldController.modifyGitHubUsername(
                              githubUsernameController.text);
                          fieldController.modifySlackUsername(
                              slackUsernameController.text);
                          fieldController
                              .modifyPersonalBio(personalBioController.text);
                          Get.snackbar("Success", "Fields updated successfully",
                              duration: const Duration(seconds: 3),
                              backgroundColor: Colors.white,
                              messageText:
                                  const Text("Fields updated successfully!"));
                          await Future.delayed(const Duration(seconds: 3));
                          if (!mounted) return;
                          Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
