import 'package:dartz/dartz.dart';
import '../domain/entities/user_entity.dart';
import 'package:e_learning_v2/core/errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signIn({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
    required String name,
    required String role,
  });
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, UserEntity>> sendOTP({
    required String email,
    required String otp,
  });
  Future<Either<Failure, void>> reSendOTP({required String email});
  Stream<bool> authStateChanges();
  UserEntity? getCurrentUser();
}
