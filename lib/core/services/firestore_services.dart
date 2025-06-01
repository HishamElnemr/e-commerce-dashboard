import 'package:cloud_firestore/cloud_firestore.dart';      
import 'package:fruits_hub_dashboard/core/services/database_services.dart';

class FirestoreServices implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(String path, Map<String, dynamic> data,String? documentId) async {
    if(documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({required String path,required String documentId}) async {
    final data = await firestore.collection(path).doc(documentId).get();
    return data.data()!;  
  }
  @override
  Future<bool> checkIfDataExists({required String path,required String documentId}) async {
    final data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
