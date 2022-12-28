import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseService {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> purchaseTicket(String name, String destination, String time) {
    return users
        .doc(FirebaseAuth.instance.currentUser.uid)
        .collection('tickets')
        .add({
          'name': name,
          'destination': destination,
          'time': time,
        })
        .then((value) => print("tickets Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
