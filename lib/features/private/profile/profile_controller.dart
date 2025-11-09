// --- FILE: lib/features/profile/profile_controller.dart ---
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final name = 'Your Name'.obs;

  void setName(String v) => name.value = v;
}
