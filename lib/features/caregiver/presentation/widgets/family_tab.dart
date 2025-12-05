import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'adherence_card.dart';

class FamilyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Blue Stats Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primaryBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Family Members',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'You Manage Medications for 3 Family Members',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          
          // Adherence Stats Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AdherenceCard(name: 'Mom', percentage: 98),
              AdherenceCard(name: 'Mom', percentage: 98),
              AdherenceCard(name: 'Mom', percentage: 98),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Add Button
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              ),
              child: const Text(
              'Add Family Member',
              style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          
          const SizedBox(height: 25),
          const Text(
            'Emergency Contacts',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          
          // Emergency Contacts Row
          Row(
            children: [
              _buildEmergencyContact(),
              const SizedBox(width: 15),
              _buildEmergencyContact(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmergencyContact() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)
          ],
        ),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(Icons.person_outline, size: 30, color: AppColors.primaryBlue),
            ),
            const SizedBox(height: 8),
            const Text('Sign Out', style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Quick Call',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
