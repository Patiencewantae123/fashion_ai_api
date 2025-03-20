import 'package:flutter/material.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kitenge Recommendations")),
      body: Center(
        child: Column(
          children: [
            const Text("Get personalized kitenge outfit recommendations!"),
            Image.asset('ASSETS/images/kitenge.jpg')
          ],
        ),
      ),
    );
  }
}
