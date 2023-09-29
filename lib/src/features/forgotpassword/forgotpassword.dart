import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F81E4),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5F81E4),
        title: const Text(
          "Forgot Password",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Spacer above the container
          Spacer(),
          Center(
            child: Container(
              height: 450,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              width: 320, // Set a specific width for the container
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Enter your email address and we'll\n send you a link to reset your\npassword. You may need to check\nyour spam folder",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 310,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.black),
                        prefixIcon: const Icon(Icons.alternate_email_outlined,
                            color: Color(0xFF4285F4)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 140),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF5F81E4),
                      ),
                    ),
                    onPressed: () {
                      // Sign Up functionality
                    },
                    child: const Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // OR with vertical lines
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          // Spacer below the container
          Spacer(),
        ],
      ),
    );
  }
}
