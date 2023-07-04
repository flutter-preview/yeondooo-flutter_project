import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:instagram_clone/tab/tab_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
              headerBuilder: (context, constraints, _) {
                return const Center(
                  child: Text(
                    'Instagram Clone',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                );
              },
              providerConfigs: const [
                EmailProviderConfiguration(),
              ]);
        }

        return const TabPage();
      },
    );
  }
}
