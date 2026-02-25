import 'package:flutter_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_app/src/features/auth/domain/failures/auth_failure.dart';
import 'package:fpdart/fpdart.dart';

/// Abstract contract for the Auth repository.
/// Implementations live in the data layer.
abstract interface class AuthRepository {
  /// Signs in with email and password.
  Future<Either<AuthFailure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Creates a new account with email and password.
  Future<Either<AuthFailure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs out the current user.
  Future<Either<AuthFailure, Unit>> signOut();

  /// Emits the current user on auth state changes.
  Stream<UserEntity?> watchAuthStateChanges();

  /// Returns the currently signed-in user, or null.
  UserEntity? get currentUser;
}
