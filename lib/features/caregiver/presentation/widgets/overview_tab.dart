import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class OverviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      physics: const NeverScrollableScrollPhysics(), // Handled by parent
      shrinkWrap: true,
      children: [
        _buildSettingsTile(Icons.notifications, 'Notifications'),
        _buildSettingsTile(Icons.lock, 'Privacy & Security'),
        _buildSettingsTile(Icons.people, 'Family Settings'),
        _buildSettingsTile(Icons.help, 'Help & Supports'),
        _buildSettingsTile(Icons.settings, 'App Settings'),
        const SizedBox(height: 20),
        _buildActionButton('Schedule Doctor Visit'),
        const SizedBox(height: 10),
        _buildActionButton('Export Health Report'),
        const SizedBox(height: 10),
        _buildActionButton('Sign Out', isOutlined: true),
      ],
    );
  }

  Widget _buildSettingsTile(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFFE8ECF0),
          width: 1,
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primaryBlue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AppColors.primaryBlue, size: 22),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
          size: 24,
          color: Color(0xFFB0B8C1),
        ),
      ),
    );
  }

  Widget _buildActionButton(String title, {bool isOutlined = false, bool isSignOut = false}) {
    final bool isSignOutButton = title == 'Sign Out' || isSignOut;
    
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: isSignOutButton ? const Color(0xFFF7E7E8) : Colors.white,
        border: isSignOutButton ? Border.all(color: const Color(0xFFE88183)) : Border.all(color: AppColors.primaryBlue),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSignOutButton ? const Color(0xFFE88183) : AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
