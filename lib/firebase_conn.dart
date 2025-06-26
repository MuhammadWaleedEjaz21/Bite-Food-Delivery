import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseConn {
  final auth = FirebaseAuth.instance;
  CollectionReference database(String collectionName) {
    return FirebaseFirestore.instance.collection(collectionName);
  }
}
