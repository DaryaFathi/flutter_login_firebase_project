import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_login/app/app.dart';
import 'package:authentication_repository/authentication_repository.dart';

Future<void> main() async {
//This line ensures that the Flutter framework is properly initialized.
//It's a necessary step before using any Flutter-specific functionality.

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  // This line initializes the Firebase services for your app
  await Firebase.initializeApp();
  final authenticationRepository = AuthenticationRepository();

//await authenticationRepository.user.first;: Here, you're awaiting the first
//value emitted by the user stream of the AuthenticationRepository. This is
//likely a Stream<User> that emits information about the currently authenticated
//user. By waiting for the first value, you ensure that any initial user data is
// fetched before the app starts running.

  await authenticationRepository.user.first;

  runApp(App(authenticationRepository: authenticationRepository));
}
