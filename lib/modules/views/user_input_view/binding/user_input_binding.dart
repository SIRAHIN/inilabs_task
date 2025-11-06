import 'package:get/get.dart';
import 'package:inilabs_task/modules/views/user_input_view/controller/user_input_controller.dart';

class UserInputBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => UserInputController(), fenix: false);
  }
}