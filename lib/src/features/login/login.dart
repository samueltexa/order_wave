import 'package:flutter/material.dart';
import '../forgotpassword/forgotpassword.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(50.0),
          child: Text("Sign In",
              style: TextStyle(fontSize: 30, color: Colors.white)),
        ),
        backgroundColor: const Color(0xFF5F81E4),
      ),
      backgroundColor: const Color(0xFF5F81E4),
      body: Stack(
        children: [
          const SizedBox(
            height: 50,
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child:
                Image.asset("assets/images/logo.png", height: 150, width: 150),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 450,
              decoration: const BoxDecoration(
                color: Color(0xFF3E3E7B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 340, // Set the width as needed
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: const TextStyle(color: Colors.white),
                        prefixIcon:
                            const Icon(Icons.person, color: Color(0xFF4285F4)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: 340, // Set the width as needed
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        prefixIcon:
                            const Icon(Icons.lock, color: Color(0xFF4285F4)),
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
                            vertical: 10, horizontal: 145),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF5F81E4),
                      ),
                    ),
                    onPressed: () {
                      // functionality
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ForgotPassword();
                      }));
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationThickness: 3,
                        decorationColor: Color(0xFF5F81E4),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        color: Colors.white,
                        width: 150,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'OR',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        height: 2,
                        color: Colors.white,
                        width: 150,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  // Sign In with Google Button
                  OutlinedButton.icon(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 90),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF5F81E4),
                      ),
                    ),
                    onPressed: () {
                      //functionality
                    },
                    icon: Image.asset(
                      'assets/images/google.png',
                      height: 30,
                      width: 20,
                    ),
                    label: const Text(
                      'Sign In with Google',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
