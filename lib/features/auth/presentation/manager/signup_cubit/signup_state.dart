part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupFailure extends SignupState {
  final String message; // error message

  SignupFailure({required this.message});
}

final class SignupSuccess extends SignupState {
  final UserEntity user;

  SignupSuccess({required this.user});
}
