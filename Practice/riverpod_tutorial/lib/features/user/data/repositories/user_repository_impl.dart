// Repository implementation that interacts with the remote data sources.

import 'package:riverpod_tutorial/features/user/data/datasources/user_remote_data_source.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository{
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> getUser() async {
    return await remoteDataSource.getUser();
  }
}