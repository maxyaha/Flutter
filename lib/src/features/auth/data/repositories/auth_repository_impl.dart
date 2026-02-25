import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/src/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_app/src/features/auth/domain/failures/auth_failure.dart';
import 'package:flutter_app/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) =>
    AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));

/// Concrete implementation of [AuthRepository].
/// Catches auth-related exceptions and maps to [AuthFailure].
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._dataSource);

  final AuthRemoteDataSource _dataSource;

  @override
  Future<Either<AuthFailure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final dto = await _dataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(dto.toDomain());
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthException(e));
    } on Object catch (_) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final dto = await _dataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(dto.toDomain());
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthException(e));
    } on Object catch (_) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _dataSource.signOut();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthException(e));
    } on Object catch (_) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Stream<UserEntity?> watchAuthStateChanges() =>
      _dataSource.watchAuthStateChanges().map((dto) => dto?.toDomain());

  @override
  UserEntity? get currentUser => _dataSource.currentUser?.toDomain();
}
