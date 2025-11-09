// --- FILE: lib/routes/app_pages.dart ---
import 'package:get/get.dart';
import '../shared/widgets/bottom_nav_screen.dart';
import '../features/private/home/home_binding.dart';
import '../features/private/home/home_screen.dart';
import '../features/private/tickets/tickets_binding.dart';
import '../features/private/tickets/tickets_screen.dart';
import '../features/private/profile/profile_binding.dart';
import '../features/private/profile/profile_screen.dart';
import '../features/public/login/login_binding.dart';
import '../features/public/login/login_screen.dart';


class AppPages {
  static const String initial = '/login';

  static final pages = <GetPage>[
    GetPage(
      name: initial,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: '/',
      page: () => const BottomNavScreen(),
      bindings: [HomeBinding(), TicketsBinding(), ProfileBinding()],
    ),

    // Add other pages (auth, onboarding, detail screens) here as separate routes
  ];
}
