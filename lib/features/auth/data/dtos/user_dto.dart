import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/auth/domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    @JsonKey(ignore: true) String? id,
    required String email,
    String? displayName,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  factory UserDTO.fromFirestore(DocumentSnapshot doc) => UserDTO.fromJson(doc.data() as Map<String, dynamic>).copyWith(id: doc.id);

  factory UserDTO.fromDomain(User model) => UserDTO(id: model.id, email: model.email);

  User toDomain() => User(id: id!, email: email);
}
