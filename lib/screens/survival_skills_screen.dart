
import 'package:crocsnt/home.dart';
import 'package:crocsnt/screens/map_screen.dart';
import 'package:flutter/material.dart';

class SurvivalSkillListScreen extends StatelessWidget {
  const SurvivalSkillListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: Colors.blue),
        //   onPressed: () {
        //     // Go back to the previous screen or exit the app if there is no previous screen
        //     Navigator.pop(context);
        //   },
        // ),
        title: const Text(
          'Survival Skills',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                _buildSkillCard(
                  context,
                  'Need to know about saltwater crocodiles',
                  'https://www.desi.qld.gov.au/__data/assets/image/0023/349610/varieties/t.jpg?v=0.1.0',
                  'Salties are the largest living reptiles, found in Northern Australia and Southeast Asia. They can grow over 7 meters long and are powerful hunters, ambushing prey both in water and on land. Known for their strength and territorial behavior, these crocodiles can also swim long distances across open seas.'
                ),
                const SizedBox(height: 10),
                _buildSkillCard(
                  context,
                  'Crocodile tips for travelling in NT',
                  'https://mr-travl.com/img/2729/gallery/crocarena-5.jpg',
                  '- Stay Alert:\n Always be cautious near water bodies, especially during dawn and dusk.\n- Avoid Swimming:\n Do not swim in rivers or estuaries with warning signs.\n- Keep Distance:\n Never approach crocodiles or their nests.\n- Follow Local Guidelines:\n Adhere to advice from park rangers and local authorities. \n- Stay in Designated Areas:\n Use marked paths and viewing platforms for safety.\n- Educate Yourself:\n Learn about crocodile behavior to stay informed and safe.'
                ),
                const SizedBox(height: 10),
                _buildSkillCard(
                  context,
                  'Crocodile history in NT',
                  'https://i0.wp.com/www.museumoflost.com/wp-content/uploads/20220504_122852.jpg?fit=1400%2C788&ssl=1',
                  'Saltwater crocodiles have inhabited the Northern Territory for millions of years, playing a crucial role in the region ecosystem. However, by the 1970s, these majestic reptiles faced severe threats from hunting and habitat loss, leading to a significant decline in their population. In response, strict conservation measures were enacted, allowing their numbers to rebound.\n Among the most famous crocodiles in NT history is Sweetheart, a large saltwater crocodile that became notorious in the 1970s for attacking boats in the Adelaide River. After numerous attempts to capture Sweetheart, he was eventually shot in 1979, leading to public outcry. His remains were preserved and now serve as a reminder of the need for wildlife conservation.\n Today, saltwater crocodiles are protected, and educational efforts emphasize their ecological importance, ensuring a greater understanding of these fascinating creatures.'
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build skill cards with navigation on tap
  Widget _buildSkillCard(BuildContext context, String title, String imageUrl, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(title: title, imageUrl: imageUrl, description: description),
          ),
        );
      },
      child: Card(
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
      ),
    );
  }
}

// Detail Screen to display more information when click sizebox
class DetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const DetailScreen({super.key, required this.title, required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        alignment: Alignment.topLeft, // Aligns to the top left
        padding: const EdgeInsets.all(10.0), // Optional: Adds padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

