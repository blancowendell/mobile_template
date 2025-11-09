// --- FILE: lib/features/home/home_binding.dart ---
import 'package:get/get.dart';
import '../../../core/services/api_service.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiService());
    Get.lazyPut<HomeController>(() => HomeController(Get.find<ApiService>()));
  }
}
