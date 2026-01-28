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
      appBar: AppBar(
        title: Text("Doggymart Home"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Doggymart 🐶",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Text("View Products"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {},
              child: Text("My Orders"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
