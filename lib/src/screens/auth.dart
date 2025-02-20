import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLogin = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.white, // Đặt nền trắng
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 70, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Log in to Chat box",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Chỉnh màu chữ thành đen
                ),
              ),
            ),
            SizedBox(height: 20),
            const Center(
              child: Text(
                "Welcome back! Sign in using your social\naccount or email to continue us",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 200, // Giới hạn max width
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/icons/facebook_white_icon.png'),
                  Image.asset('assets/icons/google_white_icon.png'),
                  Image.asset('assets/icons/apple_white_icon.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(color: Colors.black26, thickness: 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR", style: TextStyle(color: Colors.black54)),
                ),
                const Expanded(
                  child: Divider(color: Colors.black26, thickness: 1),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Enter your email"),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      // _enteredEmail = value!;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Enter your password"),
                    validator: (value) {
                      if (value == null || value.trim().length < 6) {
                        return 'Password must be at least 6 characters long.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      // _enteredPassword = value!;
                    },
                  ),
                  const SizedBox(height: 24),
                  // ElevatedButton(
                  //   onPressed: _isAuthenticating ? null : _submit,
                  //   child: _isAuthenticating
                  //       ? const CircularProgressIndicator(color: Colors.white)
                  //       : const Text("Log in"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
