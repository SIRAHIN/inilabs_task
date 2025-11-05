import 'package:get/get.dart';
import 'package:inilabs_task/modules/views/home_view/controller/home_view_controller.dart';

class HomeViewBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.put(HomeController(), permanent: false);
  }
}