// --- FILE: lib/features/tickets/tickets_binding.dart ---
import 'package:get/get.dart';
import 'tickets_controller.dart';

class TicketsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketsController>(() => TicketsController());
  }
}
