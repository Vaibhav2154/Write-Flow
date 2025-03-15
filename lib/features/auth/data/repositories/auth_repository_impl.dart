import 'package:blog_app/core/error/exception.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return await _getUser(() async => remoteDataSource.loginWithEmailPassword(
      email: email,
      password: password,
    ),);
  }

  @override
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    return await _getUser(() async=> remoteDataSource.signUpWithEmailPassword(
      name: name,
      email: email,
      password: password,
    ),);
  }

  Future<Either<Failure,User>> _getUser(
    Future<User> Function() getUser,
  ) async{
    try {
      final user = await getUser();
      
      return right(user);
    } on sb.AuthException catch (e) {
      return left(Failure(e.message));
    }
    on ServerExpection catch (e) {
      return left(Failure(e.message));
    }
  }
}
