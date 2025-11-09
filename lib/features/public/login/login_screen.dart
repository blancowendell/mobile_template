import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_template/core/config/components/forms/liquid_glass_form.dart';
import 'package:mobile_template/core/config/app_colors.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary,
              AppColors.accent,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Login', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 16),

              LiquidGlassForm(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                  onChanged: (v) => controller.email.value = v,
                ),
              ),

              const SizedBox(height: 12),
              LiquidGlassForm(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  onChanged: (v) => controller.password.value = v,
                ),
              ),

              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => controller.login(),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
