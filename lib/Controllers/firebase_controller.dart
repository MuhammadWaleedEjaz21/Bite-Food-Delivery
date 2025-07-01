import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseController {
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

  CollectionReference database(String collectionName) {
    return FirebaseFirestore.instance.collection(collectionName);
  }
}
