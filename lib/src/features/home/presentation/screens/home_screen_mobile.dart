import 'package:flutter/material.dart';
import 'package:flutter_app/src/core/extensions/build_context_x.dart';
import 'package:flutter_app/src/core/theme/app_theme.dart';
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
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 8),

          // Greeting card
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppTheme.pastelLavender, AppTheme.pastelBlue],
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.spa_outlined,
                        color: Color(0xFF9C8EC1),
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        user != null ? 'Hello! 👋' : 'Welcome!',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF3D3050),
                        ),
                      ),
                    ),
                  ],
                ),
                if (user != null) ...[
                  const SizedBox(height: 8),
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

          const SizedBox(height: 18),

          // Content card
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF9C8EC1).withOpacity(0.07),
                  blurRadius: 20,
                  offset: const Offset(0, 6),
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
                const SizedBox(height: 14),
                Text(
                  data.title,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF3D3050),
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data.description,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFFAA9DC4),
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          // Stats row
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  label: 'Items',
                  value: '—',
                  color: AppTheme.pastelRose,
                  iconColor: const Color(0xFFE57373),
                  icon: Icons.list_alt_rounded,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: _StatCard(
                  label: 'Status',
                  value: 'Active',
                  color: AppTheme.pastelMint,
                  iconColor: const Color(0xFF4A9E8A),
                  icon: Icons.check_circle_outline_rounded,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
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
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 22),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF3D3050),
                ),
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: const Color(0xFF7B6BA0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
