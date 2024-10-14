import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          // Username input field
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: usernameController, // Controller for username
              decoration: const InputDecoration(
                hintText: "Username", // Placeholder text
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.deepPurpleAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // Rounded borders
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ),
          // Password input field
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController, // Controller for password
              decoration: const InputDecoration(
                hintText: "Password", // Placeholder text
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.deepPurpleAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)), // Rounded borders
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              obscureText: true, // Hides the password input
            ),
          ),
          // Login button
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.deepPurpleAccent), // Button color
            ),
            onPressed: () {
              // Check if the password is correct
              if (passwordController.text == "12345") {
                // Navigate to the signed-in screen with the username
                GoRouter.of(context)
                    .go("/signed_in", extra: usernameController.text);
              }
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Login"),
            ),
          )
        ],
      ),
    );
  }
}
