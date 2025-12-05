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
        color: AppColors.lightGreyFill,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.primaryBlue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    );
  }

  Widget _buildActionButton(String title, {bool isOutlined = false}) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryBlue),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
