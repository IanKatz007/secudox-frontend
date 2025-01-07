import 'package:get/get.dart';
import '../../../data/models/user_model.dart';
import '../../../data/providers/auth_provider.dart';

class AuthController extends GetxController {
  final AuthProvider authProvider;
  final _user = Rx<User?>(null);
  final _isLoading = false.obs;

  AuthController({required this.authProvider});

  User? get user => _user.value;
  bool get isLoading => _isLoading.value;

  Future<void> login(String email, String password) async {
    try {
      _isLoading.value = true;
      final user = await authProvider.login(email, password);
      _user.value = user;
      Get.offAllNamed('/dashboard');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      _isLoading.value = false;
    }
  }

  Future<void> logout() async {
    try {
      await authProvider.logout();
      _user.value = null;
      Get.offAllNamed('/login');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}