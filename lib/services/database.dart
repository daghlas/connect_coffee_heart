import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connect_coffee/models/connect.dart';
import 'package:connect_coffee/models/user.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  // collection ref
  final CollectionReference connectCollection =
      FirebaseFirestore.instance.collection('Connects');

  Future updateUserData(String sugars, String name, int strength) async {
    // connect_coffee
    return await connectCollection.doc(uid).set({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  // connect list from firebase snapshot
  List<ConnectCoffee> _connectListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return ConnectCoffee(
        name: doc['name'] ?? '',
        sugars: doc['sugars'] ?? '0',
        strength: doc['strength'] ?? 0,
      );
    }).toList();
  }

  // get connect_coffee stream
  Stream<List<ConnectCoffee>> get connects {
    return connectCollection.snapshots().map(_connectListFromSnapshot);
  }

  //userData from firebase snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid,
        name: snapshot['name'],
        sugars: snapshot['sugars'],
        strength: snapshot['strength']);
  }

  //get user data stream
  Stream<UserData> get userData {
    return connectCollection.doc(uid).snapshots().map((_userDataFromSnapshot));
  }
}
