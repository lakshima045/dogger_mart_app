import 'package:flutter/material.dart';

/* ---------------- LOGIN PAGE ---------------- */

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pets, size: 90, color: Colors.orange),
            SizedBox(height: 10),

            Text(
              "Doggymart",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

/* ---------------- HOME PAGE ---------------- */

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(title: Text("Doggymart"), backgroundColor: Colors.orange),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1552053831-71594a27632d',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All"),
                Text("Small"),
                Text("Medium"),
                Text("Large"),
                Text("Puppies"),
              ],
            ),
            SizedBox(height: 20),

            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DogCard("Golden", "\$1200"),
                  SizedBox(width: 10),
                  DogCard("Shepherd", "\$1500"),
                  SizedBox(width: 10),
                  DogCard("Bulldog", "\$2500"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DogCard extends StatelessWidget {
  final String name;
  final String price;

  DogCard(this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)],
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.orange[100],
            ),
            child: Center(
              child: Icon(Icons.pets, size: 40, color: Colors.orange),
            ),
          ),
          SizedBox(height: 5),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(price, style: TextStyle(color: Colors.orange, fontSize: 16)),
        ],
      ),
    );
  }
}
