import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Profile")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/profile_pic.png')),
            SizedBox(height: 10),
            Text("Username: KitengeLover"),
            SizedBox(height: 10),
            Text("Favorite Style: Classic Kitenge"),
          ],
        ),
      ),
    );
  }
}
