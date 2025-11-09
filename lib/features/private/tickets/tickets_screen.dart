// --- FILE: lib/features/tickets/tickets_screen.dart ---
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'tickets_controller.dart';

class TicketsScreen extends GetView<TicketsController> {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tickets')),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.tickets.length,
          itemBuilder: (_, i) => ListTile(title: Text(controller.tickets[i])),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            controller.addTicket('Ticket #\${controller.tickets.length + 1}'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
