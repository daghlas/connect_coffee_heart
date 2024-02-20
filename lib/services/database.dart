import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference connectCollection =
      FirebaseFirestore.instance.collection('Connects');
}
