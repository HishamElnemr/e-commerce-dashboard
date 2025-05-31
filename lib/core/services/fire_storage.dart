import 'package:firebase_storage/firebase_storage.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';

class FireStorage implements StorageServices {
  final storageRefrence = FirebaseStorage.instance;
  @override
  Future<String> uploadFile(String file) {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }
}