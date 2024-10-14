import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crocodile report (camera)'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          // Main content in the center of the screen
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Enlarged camera capture box
                Container(
                  height: 500, // Increased height for the camera area
                  width: 300,
                  color: Colors.grey[300],
                  child: Icon(Icons.camera_alt, size: 60, color: Colors.black),
                ),
                const SizedBox(height: 20),
                // Camera buttons (Retake/Submit) under the camera box
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Retake image action
                      },
                      child: const Text('Retake'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Submit image action
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Positioned Chat Bot button at the bottom left
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: () {
                // Chat bot action
              },
              child: const Text('Chat Bot'),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ReportScreen(),
  ));
}
