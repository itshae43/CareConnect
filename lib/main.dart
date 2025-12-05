import 'package:flutter/material.dart';
import 'core/theme/app_colors.dart';
import 'features/caregiver/presentation/pages/dashboard_screen.dart';

void main() {
  runApp(const CaregiverApp());
}

class CaregiverApp extends StatelessWidget {
  const CaregiverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caregiver App',
      theme: ThemeData(
        primaryColor: AppColors.primaryBlue,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Roboto', // Default flutter font, can be changed
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
