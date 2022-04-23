import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ReVerseLatestFirebaseUser {
  ReVerseLatestFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ReVerseLatestFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ReVerseLatestFirebaseUser> reVerseLatestFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ReVerseLatestFirebaseUser>(
            (user) => currentUser = ReVerseLatestFirebaseUser(user));
