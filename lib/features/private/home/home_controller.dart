// --- FILE: lib/features/home/home_controller.dart ---
import 'package:get/get.dart';
import '../../../core/services/api_service.dart';

class HomeController extends GetxController {
  final ApiService api;
  HomeController(this.api);

  final greeting = ''.obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  Future<void> load() async {
    greeting.value = await api.fetchHello();
  }
}
