import 'package:dartz/dartz.dart';

import '../../../../core/errure/failure.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> addUser(User user);
  Future<Either<Failure, Unit>> signInUser();
}
