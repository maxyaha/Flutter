import 'package:flutter/material.dart';
import 'package:flutter_app/src/common_widgets/responsive_scaffold.dart';
import 'package:flutter_app/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:flutter_app/src/features/home/data/home_repository.dart';
import 'package:flutter_app/src/features/home/presentation/screens/home_screen_mobile.dart';
import 'package:flutter_app/src/features/home/presentation/screens/home_screen_web.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authControllerProvider).value;
    final homeDataAsync = ref.watch(homeDataProvider);

    return homeDataAsync.when(
      data: (data) => ResponsiveScaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                icon: const Icon(Icons.logout_rounded),
                tooltip: 'Sign out',
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFFEDE7FF),
                  foregroundColor: const Color(0xFF9C8EC1),
                ),
                onPressed: () =>
                    ref.read(authControllerProvider.notifier).signOut(),
              ),
            ),
          ],
        ),
        mobileBody: HomeScreenMobile(data: data, user: user),
        desktopBody: HomeScreenWeb(data: data, user: user),
      ),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Color(0xFF9C8EC1),
            strokeWidth: 2,
          ),
        ),
      ),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Text('Error loading home data: $error'),
        ),
      ),
    );
  }
}
