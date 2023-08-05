import 'package:dartz/dartz.dart';
import 'package:test/core/errure/failure.dart';
import 'package:test/features/athontification/domaine/entities/user.dart';
import 'package:test/features/athontification/domaine/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository{
  @override
  Future<Either<Failure, Unit>> addUser(User user) {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> signInUser() {
    // TODO: implement signInUser
    throw UnimplementedError();
  }


}