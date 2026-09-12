import 'package:flutter/material.dart';
import 'marah_sshal.dart';
import 'step7page_hal.dart';
import 'step9page_hal.dart';

class Step8Page extends StatelessWidget {
  const Step8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Langkah 8"),
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
              'assets/images/Social Story/Jika saya marah/8.png',
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
              "Mengumpat itu tidak baik",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Jika saya marah, saya",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "tidak boleh berkata kasar",
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
                        builder: (context) => const Step7Page(),
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
                        builder: (context) => const Step9Page(),
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