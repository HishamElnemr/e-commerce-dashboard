import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper/on_generate_route.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/views/dashboard_view.dart';

void main() {
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
