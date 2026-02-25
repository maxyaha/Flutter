// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Watches the auth state.
/// Returns null if the user is signed out.

@ProviderFor(AuthController)
final authControllerProvider = AuthControllerProvider._();

/// Watches the auth state.
/// Returns null if the user is signed out.
final class AuthControllerProvider
    extends $StreamNotifierProvider<AuthController, UserEntity?> {
  /// Watches the auth state.
  /// Returns null if the user is signed out.
  AuthControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authControllerHash();

  @$internal
  @override
  AuthController create() => AuthController();
}

String _$authControllerHash() => r'ae16cace71404395f78dc3b0edd28df604f1cb81';

/// Watches the auth state.
/// Returns null if the user is signed out.

abstract class _$AuthController extends $StreamNotifier<UserEntity?> {
  Stream<UserEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserEntity?>, UserEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserEntity?>, UserEntity?>,
              AsyncValue<UserEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
