import 'package:cv_application/controllers/field_controller.dart';
import 'package:cv_application/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

List<Widget> columnChildren = [
  const SizedBox(
    height: 10.0,
  ),
  const Divider(
    height: 20.0,
    thickness: 2.0,
    color: Colors.white,
  ),
  const SizedBox(
    height: 10.0,
  ),
  Obx(
    () => const Text(
      'Papa Kofi Boahen',
      textScaleFactor: 2,
      style: TextStyle(
        color: Colors.lightBlue,
        letterSpacing: 2.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  const SizedBox(
    height: 10.0,
  )
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final FieldController fieldController = FieldController.instance;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Papa(),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 2.0,
        actions: [
          IconButton(
              tooltip: "Edit fields",
              onPressed: () {
                Get.toNamed('/edit');
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(size.width * 0.1),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Obx(
                    () => Text(
                      fieldController.fullName.value,
                      textScaleFactor: 2,
                      style: const TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(children: <Widget>[
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/slack.svg',
                              height: 35,
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Obx(
                              () => Text(fieldController.slackUsername.value,
                                  textScaleFactor: 1.5,
                                  style: const TextStyle(color: Colors.black)),
                            ),
                          ],
                        ))
                  ]),
                  Row(children: <Widget>[
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: SvgPicture.asset(
                                'assets/github.svg',
                                height: 35,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Obx(
                              () => Text(fieldController.gitHubUsername.value,
                                  textScaleFactor: 1.5,
                                  style: const TextStyle(color: Colors.black)),
                            ),
                          ],
                        ))
                  ]),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Divider(
                    height: size.height * 0.01,
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    'Bio',
                    textScaleFactor: 2,
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Obx(
                    () => Text(
                      fieldController.personalBio.value,
                      textScaleFactor: 1.5,
                      softWrap: true,
                      style: const TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
