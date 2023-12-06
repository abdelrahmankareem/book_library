abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoginLoding extends AuthState {}

class LoginSucces extends AuthState {}

class LoginFailure extends AuthState {
  String errMessage;
  LoginFailure({required this.errMessage});
}

class RegisterSucces extends AuthState {}

class RegisterFailure extends AuthState {
  String errmessage;
  RegisterFailure({required this.errmessage});
}

class Registerloading extends AuthState {}
