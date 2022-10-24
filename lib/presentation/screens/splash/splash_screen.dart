import 'package:flutter/material.dart';
import 'package:upwork_task/presentation/resources/values_manager.dart';

import 'widgets/apical_fitness_welcome_to_life_time.dart';
import 'widgets/lets_start_for_free_button.dart';
import 'widgets/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Logo(),
          SizedBox(height: AppSizeH.s50),
          const ApicalFitnessWelcomeToLifeTime(),
          const Spacer(),
          const LetsStartForFreeButton(),
          SizedBox(height: AppSizeH.s87),
        ],
      ),
    );
  }
}
