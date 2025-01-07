import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/guard_controller.dart';

class GuardDashboardView extends GetView<GuardController> {
  const GuardDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('guard_dashboard'.tr),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () => Get.bottomSheet(const LanguageSelector()),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Quick Actions
            _buildQuickActions(),
            // Recent Visitors
            _buildRecentVisitors(),
            // Incident Reports
            _buildIncidentReports(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/guard/new-visitor'),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildQuickActions() {
    // TODO: Implement quick actions grid
    return Container();
  }

  Widget _buildRecentVisitors() {
    // TODO: Implement recent visitors list
    return Container();
  }

  Widget _buildIncidentReports() {
    // TODO: Implement incident reports list
    return Container();
  }
}