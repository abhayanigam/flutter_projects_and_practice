// This will use Riverpod to manage the state of the user fetching

import 'package:riverpod_tutorial/features/user/domain/usecases/fetch_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/user_remote_data_source.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../domain/repositories/user_repository.dart';
import '../viewmodel/user_viewmodel.dart';

// Remote Data Source Provider
final userRemoteDataSourceProvider = Provider<UserRemoteDataSource>((ref) {
  return UserRemoteDataSource();
});

// Repository Provider
final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(ref.read(userRemoteDataSourceProvider));
});

// Use Case Provider
final fetchUserUseCaseProvider = Provider<FetchUserUseCase>((ref) {
  return FetchUserUseCase(ref.read(userRepositoryProvider));
});

// ViewModel Provider
final userProvider = StateNotifierProvider<UserViewModel, UserState>((ref) {
  return UserViewModel(ref.read(fetchUserUseCaseProvider));
});