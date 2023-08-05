import 'package:dartz/dartz.dart';

import '../../../../core/errure/failure.dart';
import '../entities/user.dart';
import '../repository/auth_repository.dart';

class SingInUseCase {
  final AuthRepository authRepository;

  SingInUseCase(this.authRepository);

  Future<Either<Failure, Unit>> call(User user) async {
    return await authRepository.addUser(user);
  }
}
