// import 'dart:io';

// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
// import 'package:path/path.dart' as path;

// class FireStorage implements StorageServices {
//   final storageRefrence = FirebaseStorage.instance.ref();
//   @override
//   Future<String> uploadFile(File file, String filePath) async {
//     String fileName = path.basename(file.path);
//     String extensionName = path.extension(file.path);
//     var fileRef = storageRefrence.child('$filePath/$fileName.$extensionName');
//     await fileRef.putFile(file);
//     var fileUrl = await fileRef.getDownloadURL();
//     return fileUrl;
//   }
// }
