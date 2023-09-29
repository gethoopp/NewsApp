import 'package:get/get.dart';

import '../../view/homepage.dart';
import '../../view/page/detail1.dart';

// ignore: non_constant_identifier_names
AppRoute() => [
   
    GetPage(name: '/Home', page: () => const HomePage(),transition: Transition.zoom),
    GetPage(name : '/DetailPage1', page: () => const DetailPage1(),transition: Transition.upToDown),
 ];