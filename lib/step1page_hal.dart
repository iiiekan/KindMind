import 'package:flutter/material.dart';
import 'step2page_hal.dart';

class Step1Page extends StatelessWidget {
  const Step1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Langkah 1"),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Image.asset(
              'assets/images/Social Story/Jika saya marah/1.png',
              width: 500,
            ),

            const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                    print('audio Button Pressed');
                },
                child: Image.asset(
                    'assets/images/Social Story/Jika saya marah/audio.png',
                    width: 185,
                    height: 130,
                ),
            ),
            const Text(
              "Saya merasa marah.",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Saat marah, wajahku menjadi",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "tegang dan aku tidak merasa nyaman",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            // Next Button
            const SizedBox(height: 50),
              GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Step2Page(),
                    ),
                  );
                },
                child: Image.asset(
                    'assets/images/Social Story/Jika saya marah/next.png',
                    width: 185,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}