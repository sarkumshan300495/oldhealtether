import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:healtether_app/model/user_model.dart' as u;

final fireStore = FirebaseFirestore.instance;
Reference get firebaseStorage => FirebaseStorage.instance.ref();

final userRF = fireStore.collection("users");


Future<u.User?> fetchUserDataFromFirestore(String uid) async {
  try {
    final DocumentSnapshot snapshot = await userRF.doc(uid).get();
    if (snapshot.exists) {
      // User data exists in Firestore, parse it into a User object
      final userData = snapshot.data() as Map<String, dynamic>;
      return u.User(
        uid: uid,
        name: userData['name'],
        email: userData['email'],
      );
    } else {
      // User data not found in Firestore
      print('User data not found in Firestore for UID: $uid');
      return null;
    }
  } catch (e) {
    // Handle any errors that occur during the fetch
    print('Error fetching user data from Firestore: $e');
    return null;
  }
}

