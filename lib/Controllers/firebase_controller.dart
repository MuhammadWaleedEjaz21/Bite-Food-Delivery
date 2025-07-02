import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseController {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static final user = FirebaseAuth.instance.currentUser;

  static CollectionReference database(String collectionName) {
    return FirebaseFirestore.instance.collection(collectionName);
  }
}
