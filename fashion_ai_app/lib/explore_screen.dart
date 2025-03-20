import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore Kitenge Designs')),
      body: Center(
        child: Column(
          children: [
            const Text('Discover unique kitenge designs here!'),
            Image.network(
    'https://i.pinimg.com/originals/67/47/00/6747001d1798085432089e9904516d30.gif')
            
          ],
        ),
      ),
    );
  }
}
