import '../../../../core/errors/failures.dart';
import '../../domain/entities/user_entity.dart';
import 'package:e_learning_v2/core/bloc/base_state.dart';

class AuthState extends BaseState {
  final UserEntity? user;
  final bool isAuthenticated;
  final bool isEmailVerified;
  final Failure? failure;
  const AuthState({
    super.status = Status.initial,
    super.message,
    this.user,
    this.isAuthenticated = false,
    this.isEmailVerified = false,
    this.failure,
  });

  AuthState copyWith({
    Status? status,
    String? message,
    UserEntity? user,
    bool? isAuthenticated,
    bool? isEmailVerified,
    Failure? failure,
  }) {
    return AuthState(
      status: status ?? this.status,
      message: message ?? this.message,
      user: user ?? this.user,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      failure: failure ?? this.failure,
    );
  }

  @override
  List<Object?> get props => [
    status,
    message,
    user,
    isAuthenticated,
    isEmailVerified,
    failure,
  ];
}
