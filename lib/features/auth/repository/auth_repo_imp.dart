import 'auth_repo.dart';
import 'package:dartz/dartz.dart';
import '../domain/entities/user_entity.dart';
import '../../../core/errors/exceptions.dart';
import '../data/datasource/auth_remote_datasource.dart';
import 'package:e_learning_v2/core/errors/failures.dart';

class AuthRepoImp implements AuthRepo {
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImp(this.authRemoteDataSource);
  @override
  Stream<bool> authStateChanges() {
    return authRemoteDataSource.authStateChanges();
  }

  @override
  UserEntity? getCurrentUser() {
    return authRemoteDataSource.getCurrentUser().toEntity();
  }

  @override
  Future<Either<Failure, void>> reSendOTP({required String email}) async {
    try {
      return Right(authRemoteDataSource.reSendOTP(email: email));
    } catch (e) {
      return Left(CustomException.map(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> sendOTP({
    required String email,
    required String otp,
  }) async {
    try {
      final user = await authRemoteDataSource.sendOTP(email: email, otp: otp);
      return Right(user.toEntity());
    } catch (e) {
      return Left(CustomException.map(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final user = await authRemoteDataSource.signIn(
        email: email,
        password: password,
      );
      return Right(user.toEntity());
    } catch (e) {
      return Left(CustomException.map(e));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      return Right(authRemoteDataSource.signOut());
    } catch (e) {
      return Left(CustomException.map(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
    required String name,
    required String role,
  }) async {
    try {
      final user = await authRemoteDataSource.signUp(
        email: email,
        password: password,
        name: name,
        role: role,
      );
      return Right(user.toEntity());
    } catch (e) {
      return Left(CustomException.map(e));
    }
  }
}
