import 'package:get/get.dart';

class ProfileController extends GetxController {
  var userName = "John Doe".obs;
  var userEmail = "johndoe@example.com".obs;
  var userBio = "Tech enthusiast and journalist.".obs;
  var isDarkMode = false.obs;

  void toggleDarkMode() {
    isDarkMode.value = !isDarkMode.value;
  }

  void logout() {
    // Implement logout logic (e.g., clear session, navigate to login)
    Get.snackbar("Logout", "You have been logged out successfully.");
  }
}