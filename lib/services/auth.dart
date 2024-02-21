import 'package:connect_coffee/models/user.dart';
import 'package:connect_coffee/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on firebase user
  FireUser? _userFromFirebaseUser(User? user) {
    return user != null ? FireUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<FireUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //sign in with email/password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //register with email/password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      //create a new document for the user with ID
      await DatabaseService(uid: user!.uid)
          .updateUserData('0', 'new heart connected', 100);

      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
