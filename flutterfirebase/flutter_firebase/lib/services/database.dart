import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterfirebase/models/brew.dart';
import 'package:flutterfirebase/models/user.dart';

class Database {
  // collection references
  final CollectionReference brewCollection = Firestore.instance.collection('brews');
  final String uid;

  Database({ this.uid });

  Future updateUserData(String sugar, String name, int strength) async {
    return await brewCollection.document(uid).setData({
      'sugar': sugar,
      'name': name,
      'strength': strength,
    });
  }

  // getting brew list
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((e) {
      return Brew(
          name: e.data['name'] ?? '',
          sugar: e.data['sugar'] ?? '0',
          strength: e.data['strength'] ?? 0
      );
    }).toList();
  }

  // user data from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserData(uid: uid, name: snapshot.data['name'], sugar: snapshot.data['sugar'], strength: snapshot.data['strength']);
  }

  Stream<List<Brew>> get data {
    return brewCollection.snapshots().map(_brewListFromSnapshot);
  }

  // get user doc stream
  Stream<UserData> get userData {
    return brewCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }

}
