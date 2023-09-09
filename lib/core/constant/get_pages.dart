import 'package:fluttergetx/core/constant/route_constant.dart';
import 'package:fluttergetx/feature/login/binding/login_binding.dart';
import 'package:fluttergetx/feature/login/view/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart' ;

import '../../feature/home/binding/home_binding.dart';
import '../../feature/home/view/home_page.dart';
List<GetPage> getPages = [
  GetPage(name: RouteConstant.home,
      page: ()=> HomePageView(),
    binding: HomeBinding(),
  ),
  GetPage(name: RouteConstant.login,
    page: ()=> LoginPageView(),
    binding: LoginBinding(),
  ),
];
