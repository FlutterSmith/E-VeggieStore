import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

class FireStoreService implements DatabaseService {
  @override
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? docId}) async {
    if (docId != null) {
      await firestore.collection(path).doc(docId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData(
      {required String path, String? docId, Map<String, dynamic>? query}) async {
    if (docId != null) {
      var data = await firestore.collection(path).doc(docId).get();

      return data.data() as Map<String, dynamic>;
    } else {
      var data = await firestore.collection(path).get();
      return data.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String docId}) async {
    var doc = await firestore.collection(path).doc(docId).get();
    return doc.exists;
  }
}
