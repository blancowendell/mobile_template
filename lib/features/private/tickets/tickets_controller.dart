// --- FILE: lib/features/tickets/tickets_controller.dart ---
import 'package:get/get.dart';

class TicketsController extends GetxController {
  final tickets = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    // sample data
    tickets.addAll(['Ticket #1', 'Ticket #2']);
  }

  void addTicket(String title) {
    tickets.add(title);
  }
}
