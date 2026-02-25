import 'package:flutter/material.dart';
import 'package:flutter_app/src/core/extensions/build_context_x.dart';

/// A generic full-screen loading overlay.
class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: context.colorScheme.primary),
    );
  }
}

/// Shows a loading overlay on top of [child] when [isLoading] is true.
class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    required this.child,
    required this.isLoading,
    super.key,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          const ColoredBox(color: Colors.black38, child: AppLoadingIndicator()),
      ],
    );
  }
}
