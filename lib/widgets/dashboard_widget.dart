import 'package:flutter/material.dart';
import 'package:flutter_fitness_dashboardui/widgets/header_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const SizedBox(height: 18),
        const HeaderWidget(),
        const SizedBox(height: 18),
      ],
    );
  }
}