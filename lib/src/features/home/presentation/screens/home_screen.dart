import 'package:flutter/material.dart';
import 'package:flutter_app/src/common_widgets/responsive_scaffold.dart';
import 'package:flutter_app/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:flutter_app/src/features/home/data/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_screen_mobile.dart';
import 'home_screen_web.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authControllerProvider).value;
    final homeDataAsync = ref.watch(homeDataProvider);

    return homeDataAsync.when(
      data: (data) => ResponsiveScaffold(
        appBar: AppBar(
          title: const Text('Home Dashboard'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Sign out',
              onPressed: () =>
                  ref.read(authControllerProvider.notifier).signOut(),
            ),
          ],
        ),
        mobileBody: HomeScreenMobile(data: data, user: user),
        desktopBody: HomeScreenWeb(data: data, user: user),
      ),
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (Object error, StackTrace stack) => Scaffold(
        body: Center(
          child: Text('Error loading home data: $error'),
        ),
      ),
    );
  }
}
