import 'package:flutter/material.dart';
import 'welcome_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //  white background
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // Logo Section
              const Icon(
                Icons.pets,
                size: 90,
                color: Color(0xFF8E24AA), // Signature Purple
              ),
              const SizedBox(height: 10),
              const Text(
                "Doggymart",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8E24AA),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Welcome back! Log in to continue",
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),

              const SizedBox(height: 50),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "example@mail.com",
                  prefixIcon: const Icon(Icons.email, color: Color(0xFF8E24AA)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color(0xFF8E24AA),
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock, color: Color(0xFF8E24AA)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color(0xFF8E24AA),
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),



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
