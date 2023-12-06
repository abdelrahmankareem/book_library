import 'package:bloc/bloc.dart';
import 'package:book/features/authenteication/data/auth_cubit/authstate.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> LoginUser(
      {required String email, required String password}) async {
    emit(LoginLoding());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSucces());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginFailure(errMessage: "user not found"));
      } else if (ex.code == 'wrong-password') {
        emit(LoginFailure(errMessage: ' Wrong passwor'));
      }
    } catch (e) {
      emit(LoginFailure(errMessage: 'Something went Wrong'));
    }
  }

  Future<void> registeruser(
      {required String email, required String password}) async {
    emit(Registerloading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterSucces());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFailure(errmessage: "weak password"));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFailure(errmessage: "email already in use"));
      }
    } catch (ex) {
      emit(RegisterFailure(errmessage: "something went wrong"));
    }
  }
}
