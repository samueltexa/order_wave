import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int currentPage = 0; // Variable to track the current page

  List<IntroductionContent> contents = [
    IntroductionContent(
      'CONSIDERATE SERVICE',
      '24 hours at your service',
      'assets/images/intro1.jpg',
    ),
    IntroductionContent(
      'MAKE YOUR ORDER',
      'Get your order at your doorstep',
      'assets/images/intro2.png',
    ),
    IntroductionContent(
      'MAKE RESERVATIONS',
      '',
      'assets/images/intro3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xFFFFFFFF),
        toolbarHeight: 20,
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          PageView.builder(
            itemCount: contents.length,
            onPageChanged: (page) {
              setState(() {
                currentPage = page; // Update the current page
              });
            },
            itemBuilder: (_, i) {
              return Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      contents[i].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF5855DC),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      contents[i].description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: 400,
                      height: 300,
                      child: Image.asset(contents[i].image),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 50, // position of the circles and get started
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < contents.length; i++)
                      _buildCircle(isFilled: i == currentPage),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                OutlinedButton(
                  onPressed: () {
                    // Handle button press for all pages (last or others)
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFF5855DC),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(BorderSide.none),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
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

  Widget _buildCircle({bool isFilled = false}) {
    Color fillColor = isFilled ? const Color(0xFF5855DC) : Colors.transparent;
    Color borderColor =
        isFilled ? const Color(0xFF5855DC) : const Color(0xFF5855DC);
    double borderWidth = 1.0;

    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fillColor,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}

// class
class IntroductionContent {
  final String title;
  final String description;
  final String image;
  
// constructor
  IntroductionContent(this.title, this.description, this.image);
}
