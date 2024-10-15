import 'package:flutter/material.dart';


class SurvivalSkillListScreen extends StatelessWidget {
  const SurvivalSkillListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200], // Light background color for AppBar
        elevation: 0, // Remove shadow
        leading: const BackButton(color: Colors.blue),
        title: const Text(
          'Survival Skills',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
          ),
          // List of survival skills
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                _buildSkillCard(
                  'Need to know about saltwater crocodiles',
                  'https://www.desi.qld.gov.au/__data/assets/image/0023/349610/varieties/t.jpg?v=0.1.0',
                ),
                const SizedBox(height: 10),
                _buildSkillCard(
                  'Crocodile tips for travelling in NT',
                  'https://mr-travl.com/img/2729/gallery/crocarena-5.jpg',
                ),
                const SizedBox(height: 10),
                _buildSkillCard(
                  'Crocodile history in NT',
                  'https://i0.wp.com/www.museumoflost.com/wp-content/uploads/20220504_122852.jpg?fit=1400%2C788&ssl=1',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build skill cards
  Widget _buildSkillCard(String title, String imageUrl) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
