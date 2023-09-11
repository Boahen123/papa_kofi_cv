import 'package:cv_application/screens/edit.dart';
import 'package:cv_application/screens/home.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> appRoutes = [
  GetPage(name: '/', page: () => const Home()),
  GetPage(name: '/edit', page: () => const Edit()),
];
