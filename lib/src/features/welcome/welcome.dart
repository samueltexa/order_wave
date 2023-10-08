import 'package:flutter/material.dart';
import '../login/login.dart';
import '../signup/signup.dart';
import 'package:flutter/services.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return WillPopScope(
        onWillPop: () async {
          // Reset system UI overlay style when the page is popped
          SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.transparent, // Set to your default color
          ));
          return true;
        },
        child: Scaffold(
          backgroundColor: const Color(0xFF5F81E4),
          body: Stack(
            children: [
              Positioned(
                top: screenHeight / 4,
                left: 0,
                right: 0,
                child: const Center(
                  child: Text(
                    'Order Wave',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 30,
                child: IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white, size: 40),
                  onPressed: () {
                    // functionality
                  },
                ),
              ),
              // Container
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 450,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Welcome",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                      const Text(
                        "Get stated with your account",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 120),
                            ),
                            backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF5F81E4))),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Login();
                          }));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),
                      OutlinedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 120),
                            ),
                            backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF5F81E4))),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SignUp();
                          }));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
