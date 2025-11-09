// --- FILE: lib/features/home/home_screen.dart ---
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Obx(
          () => Text(
            controller.greeting.value.isEmpty
                ? 'Loading...'
                : controller.greeting.value,
          ),
        ),
      ),
    );
  }
}
