import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/product_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/product_repo/product_repo_impl.dart';
import 'package:fruits_hub_dashboard/core/services/database_services.dart';
import 'package:fruits_hub_dashboard/core/services/fire_storage.dart';
import 'package:fruits_hub_dashboard/core/services/firestore_services.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:fruits_hub_dashboard/core/services/supabase_storage.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<StorageServices>(SupabaseStorageServices());
  //getIt.registerSingleton<StorageServices>(FireStorage());
  getIt.registerSingleton<DatabaseService>(FirestoreServices());
  getIt.registerSingleton<ImagesRepo>(
    ImagesRepoImpl(storageServices: getIt.get<StorageServices>()),
  );
  getIt.registerSingleton<ProductRepo>(ProductRepoImpl(databaseService: getIt.get<DatabaseService>()));
}
