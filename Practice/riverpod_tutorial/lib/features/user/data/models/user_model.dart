// Model class representing the user data

import '../../domain/entities/user.dart';

class UserModel extends User{
  UserModel({required int id, required String name, required String email}): super(id : id, name: name, email: email);
}