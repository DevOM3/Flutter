import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfirebase/models/user.dart';

class Authservice {
  // getting firebase auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user stream
  // settig this stream to get response when the stream is changed
  Stream<User> get user {
    return _auth.onAuthStateChanged
    .map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  // this is async task
  Future signIn() async {
    try {
      // using sign in method to sign in
      // it returns object of type AutyResult 
      AuthResult result = await _auth.signInAnonymously();
      // getting user from the result
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e) {
      print(e.toString());
      return null;
    }

  }

  Future signInWithEmailAndPass(String email, String pass) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  Future register(String email, String pass) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}
