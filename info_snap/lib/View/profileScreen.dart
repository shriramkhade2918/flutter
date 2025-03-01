import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/profileController.dart';
// import 'profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assets/profile.png'), // Add your image
            ),
          ),
          const SizedBox(height: 10),
          Obx(() => Text(
                profileController.userName.value,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
          Obx(() => Text(profileController.userEmail.value,
              style: TextStyle(fontSize: 16, color: Colors.grey))),
          const SizedBox(height: 20),
          Obx(() => Text(profileController.userBio.value,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic))),
          const SizedBox(height: 20),
          Divider(),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Dark Mode"),
            trailing: Obx(() => Switch(
                  value: profileController.isDarkMode.value,
                  onChanged: (value) {
                    profileController.toggleDarkMode();
                  },
                )),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            trailing: Switch(
              value: true, // Set this based on actual preference
              onChanged: (value) {
                // Handle notification toggle
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text("Logout", style: TextStyle(color: Colors.red)),
            onTap: () {
              profileController.logout();
            },
          ),
        ],
      ),
    );
  }
}
