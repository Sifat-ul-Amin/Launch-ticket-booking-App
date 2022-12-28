import 'package:firebase_auth/firebase_auth.dart';

class AuthenticaitonService {
  final FirebaseAuth firebaseAuth;
  AuthenticaitonService({
    this.firebaseAuth,
  });

  Stream<User> get authStateChanges => firebaseAuth.idTokenChanges();

  Future<String> signIn(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "success";
    } on FirebaseAuth catch (e) {
      print(e.toString());
      return e.toString();
    }
  }

  Future<String> createUser(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "success";
    } on FirebaseAuth catch (e) {
      print(e.toString());
      return e.toString();
    }
  }

  void signOut() {
    try {
      firebaseAuth.signOut();
    } on FirebaseAuth catch (e) {
      print(e.toString());
    }
  }
}
