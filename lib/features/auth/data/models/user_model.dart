import '../../domain/entities/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.email,
    super.name,
    super.role,
    super.isEmailVerified = false,
  });
  factory UserModel.fromAuthUser(supabase.User user) {
    final metadata = user.userMetadata ?? {};
    return UserModel(
      id: user.id,
      name: metadata['full_name'] as String?,
      email: user.email!,
      role: metadata['role'].toString(),
      isEmailVerified: user.emailConfirmedAt != null,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
      isEmailVerified: json['isEmailVerified'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'isEmailVerified': isEmailVerified,
    };
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? role,
    bool? isEmailVerified,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
    );
  }

  UserEntity toEntity() => this;
}
