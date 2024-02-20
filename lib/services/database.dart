import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  // collection ref
  final CollectionReference connectCollection =
      FirebaseFirestore.instance.collection('Connects');

  Future updateUserData(String sugars, String name, int strength) async {
    return await connectCollection.doc(uid).set({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }
}
