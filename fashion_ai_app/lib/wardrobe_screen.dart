import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class WardrobeScreen extends StatefulWidget {
  const WardrobeScreen({super.key});

  @override
  _WardrobeScreenState createState() => _WardrobeScreenState();
}

class _WardrobeScreenState extends State<WardrobeScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedFile;
    });
  }

  // Method to handle drawer item selection
  void _onDrawerItemTapped(String item) {
    Navigator.pop(context);  // Close the drawer
    // Handle the selected item, for example:
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: $item')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Kitenge Wardrobe"),
      ),
      // Left side drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Wardrobe'),
              onTap: () => _onDrawerItemTapped('Wardrobe'),
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () => _onDrawerItemTapped('Settings'),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () => _onDrawerItemTapped('About'),
            ),
          ],
        ),
      ),
      // Main content area
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _image == null
                  ? const Text("No Kitenge image selected.")
                  : Image.file(File(_image!.path)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 128, 108, 78),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: Text("Upload Kitenge Outfit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
