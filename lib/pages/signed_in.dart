import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  // Step 5
  final String username;

  // Constructor with required username parameter
  SignedIn({
    Key? key,
    required this.username, // Required parameter to display the username
  }) : super(key: key);

  // Step 6: Build method to define the UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"), // App bar title
        backgroundColor: Colors.deepPurpleAccent, // App bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content
          children: [
            // Step 9: Welcome message displaying the username
            Text("Welcome $username"),
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 140,
            ),
          ],
        ),
      ),
    );
  }
}
