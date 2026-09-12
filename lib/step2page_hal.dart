import 'package:flutter/material.dart';
import 'step3page_hal.dart';
import 'step1page_hal.dart';
import 'marah_sshal.dart';

class Step2Page extends StatelessWidget {
  const Step2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Langkah 2"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Kata2yangBaikHal(),
              ),
            );
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Image.asset(
              'assets/images/Social Story/Jika saya marah/2.png',
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
              "Apa yang harus saya lakukan?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Jika saya marah,",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "apa yang harus dilakukan?",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Step1Page(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Social Story/Jika saya marah/back.png',
                    width: 90,
                  ),
                ),
                
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Step3Page(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Social Story/Jika saya marah/next.png',
                    width: 90,
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