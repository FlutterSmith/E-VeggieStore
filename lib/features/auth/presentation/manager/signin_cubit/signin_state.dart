part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

class SigninLoading extends SigninState {}

class SigninSuccess extends SigninState {
  final UserEntity user;
  SigninSuccess({required this.user});
}

class SigninFailure extends SigninState {
  final String message;
  SigninFailure({required this.message});
}
