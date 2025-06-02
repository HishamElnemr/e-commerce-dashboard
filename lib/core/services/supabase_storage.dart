import 'dart:io';

import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:path/path.dart' as path;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStorageServices implements StorageServices {
  static late Supabase _supabase;
  static createBucket(String bucketName) async {
    await _supabase.client.storage.createBucket(bucketName);
  }
  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: 'https://tvfqqwaebqiiwqwnxhlu.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR2ZnFxd2FlYnFpaXdxd254aGx1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0ODg1MzU5NywiZXhwIjoyMDY0NDI5NTk3fQ.N7Qx_xjiZ41cgUrK_f5G0xwagx9dgkrNckQVfSpiw7k',
    );
  }

  @override
  Future<String> uploadFile(File file, String filePath) async {
    String fileName = path.basename(file.path);
    String extensionName = path.extension(file.path);
    var result = await _supabase.client.storage
        .from('fruits_images')
        .upload('$filePath/$fileName.$extensionName', file);

    return result;
  }
}
