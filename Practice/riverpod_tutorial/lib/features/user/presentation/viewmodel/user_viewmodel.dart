// The ViewModel will handle the business logic.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/fetch_user.dart';

class UserState {
  const UserState();
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final User user;
  UserLoaded(this.user);
}

class UserError extends UserState {
  final String message;
  UserError(this.message);
}

class UserViewModel extends StateNotifier<UserState> {
  final FetchUserUseCase fetchUserUseCase;

  UserViewModel(this.fetchUserUseCase) : super(UserInitial());

  Future<void> getUser() async {
    state = UserLoading();
    try {
      final user = await fetchUserUseCase(NoParams());
      state = UserLoaded(user);
    } catch (e) {
      state = UserError(e.toString());
    }
  }
}
