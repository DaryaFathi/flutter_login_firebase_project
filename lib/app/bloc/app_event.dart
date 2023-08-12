part of 'app_bloc.dart';

// AppUserChanged which notifies the bloc that the current user has changed.

// AppLogoutRequested which notifies the bloc that the current user has
//requested to be logged out

sealed class AppEvent {
  const AppEvent();
}

final class AppLogoutRequested extends AppEvent {
  const AppLogoutRequested();
}

final class _AppUserChanged extends AppEvent {
  const _AppUserChanged(this.user);

  final User user;
}
