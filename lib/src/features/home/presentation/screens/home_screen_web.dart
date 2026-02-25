import 'package:flutter/material.dart';
import 'package:flutter_app/src/core/extensions/build_context_x.dart';
import 'package:flutter_app/src/core/theme/app_theme.dart';
import 'package:flutter_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_app/src/features/home/domain/home_model.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({
    required this.data,
    super.key,
    this.user,
  });

  final HomeModel data;
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top greeting banner
              Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppTheme.pastelLavender, AppTheme.pastelBlue],
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.spa_outlined,
                        color: Color(0xFF9C8EC1),
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user != null ? 'Hello! 👋' : 'Welcome!',
                            style: context.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF3D3050),
                            ),
                          ),
                          if (user != null) ...[
                            const SizedBox(height: 2),
                            Text(
                              user!.email,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: const Color(0xFF7B6BA0),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Main content + side stats
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Content card
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF9C8EC1).withOpacity(0.08),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: AppTheme.pastelMint,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Overview',
                              style: context.textTheme.labelSmall?.copyWith(
                                color: const Color(0xFF4A9E8A),
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.8,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            data.title,
                            style: context.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF3D3050),
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            data.description,
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: const Color(0xFFAA9DC4),
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 18),

                  // Side stats
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        _WebStatCard(
                          label: 'Items',
                          value: '—',
                          color: AppTheme.pastelRose,
                          iconColor: const Color(0xFFE57373),
                          icon: Icons.list_alt_rounded,
                        ),
                        const SizedBox(height: 14),
                        _WebStatCard(
                          label: 'Status',
                          value: 'Active',
                          color: AppTheme.pastelMint,
                          iconColor: const Color(0xFF4A9E8A),
                          icon: Icons.check_circle_outline_rounded,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WebStatCard extends StatelessWidget {
  const _WebStatCard({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
    required this.iconColor,
  });

  final String label;
  final String value;
  final Color color;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 24),
          const SizedBox(height: 10),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w800,
              color: const Color(0xFF3D3050),
            ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: const Color(0xFF7B6BA0),
            ),
          ),
        ],
      ),
    );
  }
}
