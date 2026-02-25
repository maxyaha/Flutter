import 'package:flutter_app/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_app/src/features/auth/domain/failures/auth_failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

/// Watches the auth state.
/// Returns null if the user is signed out.
@riverpod
class AuthController extends _$AuthController {
  @override
  Stream<UserEntity?> build() {
    final repo = ref.watch(authRepositoryProvider);
    return repo.watchAuthStateChanges();
  }

  /// Signs in with email/password.
  /// Returns [AuthFailure] on error, or null on success.
  Future<AuthFailure?> signIn({
    required String email,
    required String password,
  }) async {
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.fold((failure) => failure, (_) => null);
  }

  /// Creates a new account with email/password.
  Future<AuthFailure?> signUp({
    required String email,
    required String password,
  }) async {
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.fold((failure) => failure, (_) => null);
  }

  /// Signs out the current user.
  Future<AuthFailure?> signOut() async {
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.signOut();
    return result.fold((failure) => failure, (_) => null);
  }
}
