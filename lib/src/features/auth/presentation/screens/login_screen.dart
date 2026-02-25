import 'package:flutter/material.dart';
import 'package:flutter_app/src/core/extensions/build_context_x.dart';
import 'package:flutter_app/src/core/theme/app_theme.dart';
import 'package:flutter_app/src/features/auth/domain/failures/auth_failure.dart';
import 'package:flutter_app/src/features/auth/presentation/controllers/auth_controller.dart';
import 'package:flutter_app/src/shared/widgets/app_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  bool _obscurePassword = true;
  String? _errorMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final failure = await ref
        .read(authControllerProvider.notifier)
        .signIn(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

    if (mounted) {
      setState(() {
        _isLoading = false;
        _errorMessage = failure == null
            ? null
            : switch (failure) {
                AuthFailureInvalidEmail() => 'Invalid email address.',
                AuthFailureWrongPassword() =>
                  'Wrong password. Please try again.',
                AuthFailureUserNotFound() =>
                  'No account found with this email.',
                AuthFailureEmailAlreadyInUse() => 'Email already in use.',
                AuthFailureWeakPassword() => 'Password is too weak.',
                AuthFailureOperationNotAllowed() => 'Operation not allowed.',
                AuthFailureNetworkRequestFailed() =>
                  'Network error. Check your connection.',
                AuthFailureTooManyRequests() =>
                  'Too many attempts. Try again later.',
                AuthFailureServerError(message: final m) => 'Server error: $m',
                AuthFailureUnexpected() => 'Something went wrong.',
              };
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.pastelLavender,
              AppTheme.pastelRose,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo / icon area
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF9C8EC1).withOpacity(0.15),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.spa_outlined,
                      color: Color(0xFF9C8EC1),
                      size: 36,
                    ),
                  ),
                  const SizedBox(height: 28),

                  // Card
                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF9C8EC1).withOpacity(0.10),
                          blurRadius: 30,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Welcome back',
                            style: context.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF3D3050),
                              letterSpacing: -0.5,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Sign in to continue',
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: const Color(0xFFAA9DC4),
                              letterSpacing: 0.1,
                            ),
                          ),
                          const SizedBox(height: 28),

                          // Email field
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.mail_outline_rounded),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email is required';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),

                          // Password field
                          TextFormField(
                            controller: _passwordController,
                            obscureText: _obscurePassword,
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (_) => _submit(),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: const Icon(
                                Icons.lock_outline_rounded,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: const Color(0xFFAA9DC4),
                                ),
                                onPressed: () => setState(
                                  () => _obscurePassword = !_obscurePassword,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password is required';
                              }
                              return null;
                            },
                          ),

                          if (_errorMessage != null) ...[
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFEEEE),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xFFFFCDD2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.error_outline_rounded,
                                    color: Color(0xFFE57373),
                                    size: 18,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      _errorMessage!,
                                      style: const TextStyle(
                                        color: Color(0xFFC62828),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],

                          const SizedBox(height: 24),
                          AppButton(
                            label: 'Sign In',
                            onPressed: _submit,
                            isLoading: _isLoading,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
