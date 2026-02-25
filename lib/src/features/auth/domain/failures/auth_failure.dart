import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

/// Represents all possible Auth operation failures.
@freezed
sealed class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmail() = AuthFailureInvalidEmail;
  const factory AuthFailure.wrongPassword() = AuthFailureWrongPassword;
  const factory AuthFailure.userNotFound() = AuthFailureUserNotFound;
  const factory AuthFailure.emailAlreadyInUse() = AuthFailureEmailAlreadyInUse;
  const factory AuthFailure.weakPassword() = AuthFailureWeakPassword;
  const factory AuthFailure.operationNotAllowed() =
      AuthFailureOperationNotAllowed;
  const factory AuthFailure.networkRequestFailed() =
      AuthFailureNetworkRequestFailed;
  const factory AuthFailure.tooManyRequests() = AuthFailureTooManyRequests;
  const factory AuthFailure.serverError({required String message}) =
      AuthFailureServerError;
  const factory AuthFailure.unexpected() = AuthFailureUnexpected;
}
