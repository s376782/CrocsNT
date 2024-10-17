import 'package:flutter/material.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  String buttonName1 = 'Darwin Region - 0419822859';
  String buttonName2 = 'Katherine Region - 0407958405';
  String buttonName3 = 'Hotline - 0xxxxxxxx';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 80,
                child: ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   minimumSize: const Size(300, 150),
                // ),
                onPressed: () {
                  setState(() {
                    buttonName1 = '0419822859';
                  });
                },
                child: Text(buttonName1),
                ),
              ),
              ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   minimumSize: const Size(300, 150),
                // ),
                onPressed: () {
                  setState(() {
                    buttonName2 = '0407958405';
                  });
                },
                child: Text(buttonName2),
              ),
              ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   minimumSize: const Size(300, 150),
                // ),
                onPressed: () {
                  setState(() {
                    buttonName3 = '0xxxxxxxx';
                  });
                },
                child: Text(buttonName3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
