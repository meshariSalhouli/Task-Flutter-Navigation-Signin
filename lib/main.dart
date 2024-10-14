import 'package:flutter/material.dart';
import 'package:sign_in/pages/home_screen.dart';
import 'package:sign_in/pages/signed_in.dart';
import 'package:go_router/go_router.dart';

// Step 2: Entry point of the application
void main() {
  runApp(MyApp()); // Run the MyApp widget
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Step 4: Build method to return the MaterialApp with router configuration
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router, // Assign the GoRouter instance to the router
    );
  }

  // Step 3
  final _router = GoRouter(
    routes: [
      // Route for the home screen
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(), // Navigate to HomeScreen
      ),
      // Route for the signed-in screen
      GoRoute(
        path: '/signed_in',
        builder: (context, state) => SignedIn(
          username: state.extra
              as String, // Retrieve the username passed from the previous screen
        ),
      ),
    ],
  );
}
