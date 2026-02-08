import 'package:flutter/material.dart';
//import 'dog_details_page.dart';
//import 'favorites_page.dart';
//import 'contact_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;
  bool isFavorite4 = false;
  bool isFavorite5 = false;
  bool isFavorite6 = false;
  bool isFavorite7 = false;
  bool isFavorite8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Doggymart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFF3D9DC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/doga.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find Your Perfect Furry Friend!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5D4037),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Adopt, don\'t shop. Give a dog a loving home.',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Available for Adoption",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.75,
              children: [
                buildDogCard(
                  'Riley',
                  'Female',
                  'Rs. 60,500',
                  'assets/dogb.jpeg',
                  isFavorite1,
                  () => setState(() => isFavorite1 = !isFavorite1),
                ),
                buildDogCard(
                  'Mikka',
                  'Male',
                  'Rs. 50,000',
                  'assets/dogc.jpeg',
                  isFavorite2,
                  () => setState(() => isFavorite2 = !isFavorite2),
                ),
                buildDogCard(
                  'Bruno',
                  'Male',
                  'Rs. 30,000',
                  'assets/dogd.jpeg',
                  isFavorite3,
                  () => setState(() => isFavorite3 = !isFavorite3),
                ),
                buildDogCard(
                  'Luna',
                  'Female',
                  'Rs. 45,000',
                  'assets/doge.jpeg',
                  isFavorite4,
                  () => setState(() => isFavorite4 = !isFavorite4),
                ),
                buildDogCard(
                  'Max',
                  'Male',
                  'Rs. 24,000',
                  'assets/dogf.jpeg',
                  isFavorite5,
                  () => setState(() => isFavorite5 = !isFavorite5),
                ),
                buildDogCard(
                  'Bella',
                  'Female',
                  'Rs. 34,000',
                  'assets/dogg.jpeg',
                  isFavorite6,
                  () => setState(() => isFavorite6 = !isFavorite6),
                ),
                buildDogCard(
                  'Charlie',
                  'Male',
                  'Rs. 20,000',
                  'assets/dogh.jpeg',
                  isFavorite7,
                  () => setState(() => isFavorite7 = !isFavorite7),
                ),
                buildDogCard(
                  'Daisy',
                  'Female',
                  'Rs. 10,000',
                  'assets/dogi.jpeg',
                  isFavorite8,
                  () => setState(() => isFavorite8 = !isFavorite8),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF8E24AA), // Deep purple
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FavoritesPage(
                  isFavorite1: isFavorite1,
                  isFavorite2: isFavorite2,
                  isFavorite3: isFavorite3,
                  isFavorite4: isFavorite4,
                  isFavorite5: isFavorite5,
                  isFavorite6: isFavorite6,
                  isFavorite7: isFavorite7,
                  isFavorite8: isFavorite8,
                ),
              ),
            );
          if (index == 2)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ContactPage()),
            );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
        ],
      ),
    );
  }

  Widget buildDogCard(
    String name,
    String gender,
    String price,
    String imagePath,
    bool isFav,
    VoidCallback onFavTap,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDFDFD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(imagePath, fit: BoxFit.contain),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: GestureDetector(
                    onTap: onFavTap,
                    child: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Text(
                  gender,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8E24AA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DogDetailsPage(
                            dogName: name,
                            dogGender: gender,
                            dogPrice: price,
                            dogImagePath: imagePath,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "Adopt Me",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
