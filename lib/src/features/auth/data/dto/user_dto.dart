import 'package:flutter_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// Data Transfer Object for mapping Firebase User → UserEntity.
@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    String? displayName,
    String? photoUrl,
    @Default(false) bool emailVerified,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// Maps a raw Firestore document to [UserDto].
  factory UserDto.fromFirestore(Map<String, dynamic> data, String docId) =>
      UserDto(
        id: docId,
        email: data['email'] as String? ?? '',
        displayName: data['displayName'] as String?,
        photoUrl: data['photoUrl'] as String?,
        emailVerified: data['emailVerified'] as bool? ?? false,
      );

  /// Creates DTO from a Firebase `User` object fields.
  factory UserDto.fromFirebaseUser({
    required String uid,
    required String email,
    required bool emailVerified,
    String? displayName,
    String? photoUrl,
  }) => UserDto(
    id: uid,
    email: email,
    displayName: displayName,
    photoUrl: photoUrl,
    emailVerified: emailVerified,
  );

  /// Converts this DTO to domain [UserEntity].
  UserEntity toDomain() => UserEntity(
    id: id,
    email: email,
    displayName: displayName,
    photoUrl: photoUrl,
    emailVerified: emailVerified,
  );
}
