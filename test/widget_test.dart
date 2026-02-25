// Widget smoke test for flutter_app
//
// Verifies that the app can be built and renders without crashing.
// Firebase is not initialized in tests, so we just verify
// the app widget tree builds successfully.

import 'package:flutter/material.dart';
import 'package:flutter_app/src/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App renders without crashing', (tester) async {
    // Build our app wrapped in ProviderScope (required for Riverpod).
    // Firebase is not initialized here — the app's auth state will
    // remain in the loading/unauthenticated state, which is expected.
    await tester.pumpWidget(const ProviderScope(child: App()));

    // Allow initial frame to settle.
    await tester.pump();

    // Verify the Material widget tree renders correctly.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
