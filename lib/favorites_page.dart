import 'package:flutter/material.dart';
import 'dog_details_page.dart';

class FavoritesPage extends StatelessWidget {
  final bool isFavorite1;
  final bool isFavorite2;
  final bool isFavorite3;
  final bool isFavorite4;
  final bool isFavorite5;
  final bool isFavorite6;
  final bool isFavorite7;
  final bool isFavorite8;

  const FavoritesPage({
    super.key,
    required this.isFavorite1,
    required this.isFavorite2,
    required this.isFavorite3,
    required this.isFavorite4,
    required this.isFavorite5,
    required this.isFavorite6,
    required this.isFavorite7,
    required this.isFavorite8,
  });

  @override
  Widget build(BuildContext context) {
    // List of favorite dogs with updated prices and image extensions
    List<Map<String, dynamic>> favoriteDogs = [];

    if (isFavorite1) favoriteDogs.add({'name':'Riley','gender':'Female','price':'Rs. 6,500','imagePath':'assets/dogb.jpeg'});
    if (isFavorite2) favoriteDogs.add({'name':'Mikka','gender':'Male','price':'Rs. 50,000','imagePath':'assets/dogc.jpeg'});
    if (isFavorite3) favoriteDogs.add({'name':'Bruno','gender':'Male','price':'Rs. 30,000','imagePath':'assets/dogd.jpeg'});
    if (isFavorite4) favoriteDogs.add({'name':'Luna','gender':'Female','price':'Rs. 45,000','imagePath':'assets/doge.jpeg'});
    if (isFavorite5) favoriteDogs.add({'name':'Max','gender':'Male','price':'Rs. 24,000','imagePath':'assets/dogf.jpeg'});
    if (isFavorite6) favoriteDogs.add({'name':'Bella','gender':'Female','price':'Rs. 34,000','imagePath':'assets/dogg.jpeg'});
    if (isFavorite7) favoriteDogs.add({'name':'Charlie','gender':'Male','price':'Rs. 20,000','imagePath':'assets/dogh.jpeg'});
    if (isFavorite8) favoriteDogs.add({'name':'Daisy','gender':'Female','price':'Rs. 10,000','imagePath':'assets/dogi.jpeg'});

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'My Favorites',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: favoriteDogs.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 80, color: Colors.grey[300]),
                  const SizedBox(height: 20),
                  const Text('No favorites yet', style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favoriteDogs.length,
              itemBuilder: (context, index) {
                final dog = favoriteDogs[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        // Small Box Image to match Home Page style
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFDFDFD),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dog['imagePath'], fit: BoxFit.contain),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dog['name'],
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                dog['gender'],
                                style: const TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                dog['price'],
                                style: const TextStyle(
                                  fontSize: 16, 
                                  color: Colors.green, 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DogDetailsPage(
                                  dogName: dog['name'],
                                  dogGender: dog['gender'],
                                  dogPrice: dog['price'],
                                  dogImagePath: dog['imagePath'],
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8E24AA),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Text('View', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}