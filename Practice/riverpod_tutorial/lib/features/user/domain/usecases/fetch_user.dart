// Use case that fetch the user

import 'package:riverpod_tutorial/core/usecases/usecase.dart';
import 'package:riverpod_tutorial/features/user/domain/entities/user.dart';
import 'package:riverpod_tutorial/features/user/domain/repositories/user_repository.dart';

class FetchUserUseCase implements UseCase<User, NoParams>{
  final UserRepository repository;

  FetchUserUseCase(this.repository);

  @override
  Future<User> call(NoParams params) async {
    return await repository.getUser();
  }
}

class NoParams {}