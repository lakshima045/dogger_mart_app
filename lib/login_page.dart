import 'package:flutter/material.dart';
//import 'welcome_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Clean white background
      body: SingleChildScrollView(
        // Prevents overflow when keyboard appears
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

              // Password Field
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

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFF8E24AA)),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8E24AA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Sign Up Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8E24AA),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
