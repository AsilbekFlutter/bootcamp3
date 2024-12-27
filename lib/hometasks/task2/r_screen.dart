import 'package:flutter/material.dart';

class RScreen extends StatelessWidget {
  const RScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.deepOrange,
                child: Center(
                    child: Text(
                  "R.",
                  style: TextStyle(fontSize: 300),
                )),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: Text(
                        "Rayan Golf is a film director and photographer whose work covers two decades of documenting music, art, fashion and celebrity.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        "Studio: \nRayangolf@gmail.com\n(+351) 372 77 83",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        "Social:\nInstagram",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
