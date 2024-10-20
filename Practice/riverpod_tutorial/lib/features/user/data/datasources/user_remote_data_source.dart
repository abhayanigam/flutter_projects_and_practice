// This simulates fetching data from a remote server
import '../models/user_model.dart';

class UserRemoteDataSource{
  Future<UserModel> getUser() async {
    // Simulate network request (fetching data from a remote server).

    await Future.delayed(Duration(seconds: 1));
    return UserModel(id: 1, name: "Abhaya Nigam", email: "abc@gmail.com");
  }
}