// --- FILE: lib/shared/widgets/bottom_nav_screen.dart ---
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/private/home/home_screen.dart';
import '../../features/private/tickets/tickets_screen.dart';
import '../../features/private/profile/profile_screen.dart';

class BottomNavController extends GetxController {
  final _index = 0.obs;
  int get index => _index.value;
  set index(int v) => _index.value = v;
}

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController c = Get.put(BottomNavController());

    final pages = const [HomeScreen(), TicketsScreen(), ProfileScreen()];

    return Scaffold(
      body: Obx(() => IndexedStack(index: c.index, children: pages)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: c.index,
          onTap: (i) => c.index = i,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_num),
              label: 'Tickets',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
