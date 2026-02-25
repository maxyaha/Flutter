import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/src/features/auth/data/dto/user_dto.dart';
import 'package:flutter_app/src/features/auth/domain/failures/auth_failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_remote_data_source.g.dart';

@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) =>
    AuthRemoteDataSource(FirebaseAuth.instance);

/// Handles all direct calls to FirebaseAuth.
/// Returns raw [User] objects or throws [FirebaseAuthException].
class AuthRemoteDataSource {
  const AuthRemoteDataSource(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Future<UserDto> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userToDto(credential.user!);
  }

  Future<UserDto> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userToDto(credential.user!);
  }

  Future<void> signOut() => _firebaseAuth.signOut();

  Stream<UserDto?> watchAuthStateChanges() => _firebaseAuth
      .authStateChanges()
      .map((user) => user == null ? null : _userToDto(user));

  UserDto? get currentUser {
    final user = _firebaseAuth.currentUser;
    return user == null ? null : _userToDto(user);
  }

  UserDto _userToDto(User user) => UserDto.fromFirebaseUser(
    uid: user.uid,
    email: user.email ?? '',
    displayName: user.displayName,
    photoUrl: user.photoURL,
    emailVerified: user.emailVerified,
  );
}

/// Maps [FirebaseAuthException] error codes to [AuthFailure].
AuthFailure mapFirebaseAuthException(FirebaseAuthException e) {
  return switch (e.code) {
    'invalid-email' => const AuthFailure.invalidEmail(),
    'wrong-password' => const AuthFailure.wrongPassword(),
    'user-not-found' => const AuthFailure.userNotFound(),
    'email-already-in-use' => const AuthFailure.emailAlreadyInUse(),
    'weak-password' => const AuthFailure.weakPassword(),
    'operation-not-allowed' => const AuthFailure.operationNotAllowed(),
    'network-request-failed' => const AuthFailure.networkRequestFailed(),
    'too-many-requests' => const AuthFailure.tooManyRequests(),
    _ => AuthFailure.serverError(message: e.message ?? e.code),
  };
}
