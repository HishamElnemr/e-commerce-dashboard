
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruits_hub_dashboard/core/services/fire_storage.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<StorageServices>(FireStorage());
  getIt.registerSingleton<ImagesRepo>(ImagesRepoImpl(storageServices: getIt.get<StorageServices>()));
}
