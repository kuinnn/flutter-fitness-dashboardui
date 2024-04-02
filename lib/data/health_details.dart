import 'package:flutter_fitness_dashboardui/model/heath_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(icon: 'assets/icons/burn.png', value: "305", title: "Calories burned"),
    HealthModel(icon: 'assets/icons/steps.png', value: "10,983", title: "Steps"),
    HealthModel(icon: 'assets/icons/distance.png', value: "7km", title: "Distance"),
    HealthModel(icon: 'assets/icons/sleep.png', value: "7h 48m", title: "Sleep"),
  ];
}