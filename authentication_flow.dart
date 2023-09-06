import 'package:flutter/material.dart';
import 'login.dart';
import 'forget_password.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key, this.afterLogin});

  final void Function()? afterLogin;

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = LoginScreen(
      afterLogin: widget.afterLogin,
      onForgetPassword: onForgetPassword,
    );
    super.initState();
  }

  void onForgetPassword() {
    setState(() {
      activeScreen = const ForgetPassword();
    });
  }

  @override
  Widget build(BuildContext context) {
    return activeScreen!;
  }
}
