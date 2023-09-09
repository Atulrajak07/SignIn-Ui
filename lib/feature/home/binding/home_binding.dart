import 'package:fluttergetx/feature/home/controller/homeController.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
   Get.put( HomeController());
  }
}
