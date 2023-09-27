import 'package:flutter/material.dart';

import 'introduction2.dart';

class Introduction3 extends StatelessWidget {
  const Introduction3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: GestureDetector(
          onHorizontalDragUpdate: (details) {
            // Adjust the sensitivity as needed
            if (details.primaryDelta! < 5) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return const Introduction2();
              }));
              // Navigate to the home page when dragging to the right
            }
          },
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "MAKE RESERVATIONS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF5855DC)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Image.asset("assets/images/intro3.png"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildCircle(isFilled: false), // First circle is filled
                  _buildCircle(isFilled: false), // Other circles have border
                  _buildCircle(isFilled: true),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 60,
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
                  ),
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF5F81E4)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(BorderSide.none),
                ),
                child: const Text(
                  "Start to Use",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildCircle({bool isFilled = false}) {
    Color fillColor = isFilled ? const Color(0xFF5855DC) : Colors.transparent;
    Color borderColor = const Color(0xFF5855DC);
    double borderWidth = 2.0;

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
