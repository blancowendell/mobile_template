// --- FILE: lib/core/services/api_service.dart ---
class ApiService {
  // Minimal skeleton for injecting later via Bindings/DI
  Future<void> init() async {
    // Initialize APIs / clients
  }

  // Example method
  Future<String> fetchHello() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return 'Hello from ApiService';
  }
}
