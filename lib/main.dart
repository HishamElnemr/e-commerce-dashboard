import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/helper/on_generate_route.dart';
import 'package:fruits_hub_dashboard/core/services/custom_bloc_observer.dart';
import 'package:fruits_hub_dashboard/core/services/getit_services.dart';
import 'package:fruits_hub_dashboard/core/services/supabase_storage.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SupabaseStorageServices.initSupabase();
  await SupabaseStorageServices.createBucket('fruits_images');
  Bloc.observer = CustomBlocObserver();
  setup();
  runApp(const FruitesHubDashBoard());
}

class FruitesHubDashBoard extends StatelessWidget {
  const FruitesHubDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
