// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure()';
}


}

/// @nodoc
class $AuthFailureCopyWith<$Res>  {
$AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
}


/// Adds pattern-matching-related methods to [AuthFailure].
extension AuthFailurePatterns on AuthFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthFailureInvalidEmail value)?  invalidEmail,TResult Function( AuthFailureWrongPassword value)?  wrongPassword,TResult Function( AuthFailureUserNotFound value)?  userNotFound,TResult Function( AuthFailureEmailAlreadyInUse value)?  emailAlreadyInUse,TResult Function( AuthFailureWeakPassword value)?  weakPassword,TResult Function( AuthFailureOperationNotAllowed value)?  operationNotAllowed,TResult Function( AuthFailureNetworkRequestFailed value)?  networkRequestFailed,TResult Function( AuthFailureTooManyRequests value)?  tooManyRequests,TResult Function( AuthFailureServerError value)?  serverError,TResult Function( AuthFailureUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthFailureInvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case AuthFailureWrongPassword() when wrongPassword != null:
return wrongPassword(_that);case AuthFailureUserNotFound() when userNotFound != null:
return userNotFound(_that);case AuthFailureEmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse(_that);case AuthFailureWeakPassword() when weakPassword != null:
return weakPassword(_that);case AuthFailureOperationNotAllowed() when operationNotAllowed != null:
return operationNotAllowed(_that);case AuthFailureNetworkRequestFailed() when networkRequestFailed != null:
return networkRequestFailed(_that);case AuthFailureTooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case AuthFailureServerError() when serverError != null:
return serverError(_that);case AuthFailureUnexpected() when unexpected != null:
return unexpected(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthFailureInvalidEmail value)  invalidEmail,required TResult Function( AuthFailureWrongPassword value)  wrongPassword,required TResult Function( AuthFailureUserNotFound value)  userNotFound,required TResult Function( AuthFailureEmailAlreadyInUse value)  emailAlreadyInUse,required TResult Function( AuthFailureWeakPassword value)  weakPassword,required TResult Function( AuthFailureOperationNotAllowed value)  operationNotAllowed,required TResult Function( AuthFailureNetworkRequestFailed value)  networkRequestFailed,required TResult Function( AuthFailureTooManyRequests value)  tooManyRequests,required TResult Function( AuthFailureServerError value)  serverError,required TResult Function( AuthFailureUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case AuthFailureInvalidEmail():
return invalidEmail(_that);case AuthFailureWrongPassword():
return wrongPassword(_that);case AuthFailureUserNotFound():
return userNotFound(_that);case AuthFailureEmailAlreadyInUse():
return emailAlreadyInUse(_that);case AuthFailureWeakPassword():
return weakPassword(_that);case AuthFailureOperationNotAllowed():
return operationNotAllowed(_that);case AuthFailureNetworkRequestFailed():
return networkRequestFailed(_that);case AuthFailureTooManyRequests():
return tooManyRequests(_that);case AuthFailureServerError():
return serverError(_that);case AuthFailureUnexpected():
return unexpected(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthFailureInvalidEmail value)?  invalidEmail,TResult? Function( AuthFailureWrongPassword value)?  wrongPassword,TResult? Function( AuthFailureUserNotFound value)?  userNotFound,TResult? Function( AuthFailureEmailAlreadyInUse value)?  emailAlreadyInUse,TResult? Function( AuthFailureWeakPassword value)?  weakPassword,TResult? Function( AuthFailureOperationNotAllowed value)?  operationNotAllowed,TResult? Function( AuthFailureNetworkRequestFailed value)?  networkRequestFailed,TResult? Function( AuthFailureTooManyRequests value)?  tooManyRequests,TResult? Function( AuthFailureServerError value)?  serverError,TResult? Function( AuthFailureUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case AuthFailureInvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case AuthFailureWrongPassword() when wrongPassword != null:
return wrongPassword(_that);case AuthFailureUserNotFound() when userNotFound != null:
return userNotFound(_that);case AuthFailureEmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse(_that);case AuthFailureWeakPassword() when weakPassword != null:
return weakPassword(_that);case AuthFailureOperationNotAllowed() when operationNotAllowed != null:
return operationNotAllowed(_that);case AuthFailureNetworkRequestFailed() when networkRequestFailed != null:
return networkRequestFailed(_that);case AuthFailureTooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case AuthFailureServerError() when serverError != null:
return serverError(_that);case AuthFailureUnexpected() when unexpected != null:
return unexpected(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  invalidEmail,TResult Function()?  wrongPassword,TResult Function()?  userNotFound,TResult Function()?  emailAlreadyInUse,TResult Function()?  weakPassword,TResult Function()?  operationNotAllowed,TResult Function()?  networkRequestFailed,TResult Function()?  tooManyRequests,TResult Function( String message)?  serverError,TResult Function()?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthFailureInvalidEmail() when invalidEmail != null:
return invalidEmail();case AuthFailureWrongPassword() when wrongPassword != null:
return wrongPassword();case AuthFailureUserNotFound() when userNotFound != null:
return userNotFound();case AuthFailureEmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse();case AuthFailureWeakPassword() when weakPassword != null:
return weakPassword();case AuthFailureOperationNotAllowed() when operationNotAllowed != null:
return operationNotAllowed();case AuthFailureNetworkRequestFailed() when networkRequestFailed != null:
return networkRequestFailed();case AuthFailureTooManyRequests() when tooManyRequests != null:
return tooManyRequests();case AuthFailureServerError() when serverError != null:
return serverError(_that.message);case AuthFailureUnexpected() when unexpected != null:
return unexpected();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  invalidEmail,required TResult Function()  wrongPassword,required TResult Function()  userNotFound,required TResult Function()  emailAlreadyInUse,required TResult Function()  weakPassword,required TResult Function()  operationNotAllowed,required TResult Function()  networkRequestFailed,required TResult Function()  tooManyRequests,required TResult Function( String message)  serverError,required TResult Function()  unexpected,}) {final _that = this;
switch (_that) {
case AuthFailureInvalidEmail():
return invalidEmail();case AuthFailureWrongPassword():
return wrongPassword();case AuthFailureUserNotFound():
return userNotFound();case AuthFailureEmailAlreadyInUse():
return emailAlreadyInUse();case AuthFailureWeakPassword():
return weakPassword();case AuthFailureOperationNotAllowed():
return operationNotAllowed();case AuthFailureNetworkRequestFailed():
return networkRequestFailed();case AuthFailureTooManyRequests():
return tooManyRequests();case AuthFailureServerError():
return serverError(_that.message);case AuthFailureUnexpected():
return unexpected();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  invalidEmail,TResult? Function()?  wrongPassword,TResult? Function()?  userNotFound,TResult? Function()?  emailAlreadyInUse,TResult? Function()?  weakPassword,TResult? Function()?  operationNotAllowed,TResult? Function()?  networkRequestFailed,TResult? Function()?  tooManyRequests,TResult? Function( String message)?  serverError,TResult? Function()?  unexpected,}) {final _that = this;
switch (_that) {
case AuthFailureInvalidEmail() when invalidEmail != null:
return invalidEmail();case AuthFailureWrongPassword() when wrongPassword != null:
return wrongPassword();case AuthFailureUserNotFound() when userNotFound != null:
return userNotFound();case AuthFailureEmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse();case AuthFailureWeakPassword() when weakPassword != null:
return weakPassword();case AuthFailureOperationNotAllowed() when operationNotAllowed != null:
return operationNotAllowed();case AuthFailureNetworkRequestFailed() when networkRequestFailed != null:
return networkRequestFailed();case AuthFailureTooManyRequests() when tooManyRequests != null:
return tooManyRequests();case AuthFailureServerError() when serverError != null:
return serverError(_that.message);case AuthFailureUnexpected() when unexpected != null:
return unexpected();case _:
  return null;

}
}

}

/// @nodoc


class AuthFailureInvalidEmail implements AuthFailure {
  const AuthFailureInvalidEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureInvalidEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.invalidEmail()';
}


}




/// @nodoc


class AuthFailureWrongPassword implements AuthFailure {
  const AuthFailureWrongPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureWrongPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.wrongPassword()';
}


}




/// @nodoc


class AuthFailureUserNotFound implements AuthFailure {
  const AuthFailureUserNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureUserNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.userNotFound()';
}


}




/// @nodoc


class AuthFailureEmailAlreadyInUse implements AuthFailure {
  const AuthFailureEmailAlreadyInUse();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureEmailAlreadyInUse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.emailAlreadyInUse()';
}


}




/// @nodoc


class AuthFailureWeakPassword implements AuthFailure {
  const AuthFailureWeakPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureWeakPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.weakPassword()';
}


}




/// @nodoc


class AuthFailureOperationNotAllowed implements AuthFailure {
  const AuthFailureOperationNotAllowed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureOperationNotAllowed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.operationNotAllowed()';
}


}




/// @nodoc


class AuthFailureNetworkRequestFailed implements AuthFailure {
  const AuthFailureNetworkRequestFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureNetworkRequestFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.networkRequestFailed()';
}


}




/// @nodoc


class AuthFailureTooManyRequests implements AuthFailure {
  const AuthFailureTooManyRequests();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureTooManyRequests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.tooManyRequests()';
}


}




/// @nodoc


class AuthFailureServerError implements AuthFailure {
  const AuthFailureServerError({required this.message});
  

 final  String message;

/// Create a copy of AuthFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthFailureServerErrorCopyWith<AuthFailureServerError> get copyWith => _$AuthFailureServerErrorCopyWithImpl<AuthFailureServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureServerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthFailure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthFailureServerErrorCopyWith<$Res> implements $AuthFailureCopyWith<$Res> {
  factory $AuthFailureServerErrorCopyWith(AuthFailureServerError value, $Res Function(AuthFailureServerError) _then) = _$AuthFailureServerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthFailureServerErrorCopyWithImpl<$Res>
    implements $AuthFailureServerErrorCopyWith<$Res> {
  _$AuthFailureServerErrorCopyWithImpl(this._self, this._then);

  final AuthFailureServerError _self;
  final $Res Function(AuthFailureServerError) _then;

/// Create a copy of AuthFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthFailureServerError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthFailureUnexpected implements AuthFailure {
  const AuthFailureUnexpected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailureUnexpected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.unexpected()';
}


}




// dart format on
