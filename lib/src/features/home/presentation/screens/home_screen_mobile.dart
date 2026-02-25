import 'package:flutter/material.dart';
import 'package:flutter_app/src/core/extensions/build_context_x.dart';
import 'package:flutter_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_app/src/features/home/domain/home_model.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({
    required this.data,
    super.key,
    this.user,
  });

  final HomeModel data;
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.phone_iphone,
              size: 64,
              color: context.colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              data.title,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              data.description,
              style: context.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            if (user != null) ...[
              const SizedBox(height: 24),
              Text(
                'Logged in as:\\n${user!.email}',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
