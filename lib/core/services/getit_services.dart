
import 'package:fruits_hub_dashboard/core/services/fire_storage.dart';
import 'package:fruits_hub_dashboard/core/services/storage_services.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<StorageServices>(FireStorage());
}
