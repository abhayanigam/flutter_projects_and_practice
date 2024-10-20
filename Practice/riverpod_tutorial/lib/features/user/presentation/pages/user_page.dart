import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/user_provider.dart';
import '../viewmodel/user_viewmodel.dart';

class UserPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(title: Text("User Info")),
      body: userState is UserInitial
          ? Center(
              child: ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).getUser();
              },
              child: Text("Fetch User"),
            ))
          : userState is UserLoading
              ? Center(child: CircularProgressIndicator())
              : userState is UserLoaded
                  ? Center(
                      child: Text(
                          "Name: ${userState.user.name}\nEmail: ${userState.user.email}"))
                  : userState is UserError
                      ? Center(child: Text(userState.message))
                      : Container(),
    );
  }
}
