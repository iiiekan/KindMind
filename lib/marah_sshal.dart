import 'package:flutter/material.dart';
import 'step1page_hal.dart';
import 'step2page_hal.dart';
import 'step3page_hal.dart';
import 'socialstories_hal.dart';

class Kata2yangBaikHal extends StatelessWidget {
  const Kata2yangBaikHal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jika Saya Marah"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SocialStoriesHal(),
              ),
            );
          },
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Social Story/Jika saya marah/BG.png',
            ),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: [

            // 1 Button
            Positioned(
              top: 300,
              left: 22,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Step1Page(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/1.png',
                  width: 185,
                ),
              ),
            ),

            // 2 Button
            Positioned(
              top: 300,
              left: 220,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Step2Page(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/2.png',
                  width: 185,
                ),
              ),
            ),

            // 3 Button
            Positioned(
              top: 300,
              left: 418,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Step3Page(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/3.png',
                  width: 185,
                ),
              ),
            ),

            // 4 Button
            Positioned(
              top: 300,
              left: 616,
              child: GestureDetector(
                onTap: () {
                  print('4 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/4.png',
                  width: 185,
                ),
              ),
            ),

            // 5 Button
            Positioned(
              top: 498,
              left: 22,
              child: GestureDetector(
                onTap: () {
                  print('5 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/5.png',
                  width: 185,
                ),
              ),
            ),

            // 6 Button
            Positioned(
              top: 498,
              left: 220,
              child: GestureDetector(
                onTap: () {
                  print('6 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/6.png',
                  width: 185,
                ),
              ),
            ),

            // 7 Button
            Positioned(
              top: 498,
              left: 418,
              child: GestureDetector(
                onTap: () {
                  print('7 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/7.png',
                  width: 185,
                ),
              ),
            ),

            // 8 Button
            Positioned(
              top: 498,
              left: 616,
              child: GestureDetector(
                onTap: () {
                  print('8 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/8.png',
                  width: 185,
                ),
              ),
            ),

            // 9 Button
            Positioned(
              top: 696,
              left: 22,
              child: GestureDetector(
                onTap: () {
                  print('9 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/9.png',
                  width: 185,
                ),
              ),
            ),

            // 10 Button
            Positioned(
              top: 696,
              left: 220,
              child: GestureDetector(
                onTap: () {
                  print('10 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/10.png',
                  width: 185,
                ),
              ),
            ),

            // 11 Button
            Positioned(
              top: 696,
              left: 418,
              child: GestureDetector(
                onTap: () {
                  print('11 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/11.png',
                  width: 185,
                ),
              ),
            ),

            // 12 Button
            Positioned(
              top: 696,
              left: 616,
              child: GestureDetector(
                onTap: () {
                  print('12 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/12.png',
                  width: 185,
                ),
              ),
            ),
            
            // 13 Button
            Positioned(
              top: 894,
              left: 22,
              child: GestureDetector(
                onTap: () {
                  print('13 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/13.png',
                  width: 185,
                ),
              ),
            ),

            // 14 Button
            Positioned(
              top: 894,
              left: 220,
              child: GestureDetector(
                onTap: () {
                  print('14 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/14.png',
                  width: 185,
                ),
              ),
            ),

            // 15 Button
            Positioned(
              top: 894,
              left: 418,
              child: GestureDetector(
                onTap: () {
                  print('15 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/15.png',
                  width: 185,
                ),
              ),
            ),

            // 16 Button
            Positioned(
              top: 894,
              left: 616,
              child: GestureDetector(
                onTap: () {
                  print('16 Button Pressed');
                },
                child: Image.asset(
                  'assets/images/Social Story/Jika saya marah/16.png',
                  width: 185,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}