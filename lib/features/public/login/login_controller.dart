// --- FILE: lib/features/public/login_controller.dart ---
import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  void login() {
    // for now just print values
    print('email: \${email.value}, pass: \${password.value}');
  }
}
