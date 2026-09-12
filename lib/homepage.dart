import 'package:flutter/material.dart';
import 'pelajaran_hal.dart';
import 'socialstories_hal.dart';
import 'assessment_results.dart';
import 'alatAAC_hal.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: [
            // Classes 
            Positioned(
              top: 280,
              left: 10,
              right: 0, 
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image.asset(
                      "assets/images/Kelas/MTK3-4thn.png",
                      width: 420,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image.asset(
                      "assets/images/Kelas/ABAVB18-30.png",
                      width: 420,
                    ),
                  ),
                    
                  Image.asset(
                    "assets/images/Kelas/IPA5-8.png",
                    width: 420,
                  ),
                ],
              ),
            ),

            // AAC Button
            Positioned(
              top: 600,
              left: 30,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlatAACHal(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/AAC Tools Button.jpg',
                  width: 385,
                ),
              ),
            ),

            // Social Stories Button
            Positioned(
              top: 600,
              left: 420,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SocialStoriesHal(),
                    ),
                  );

                },
                child: Image.asset(
                  'assets/images/Social Stories Button.png',
                  width: 385,
                ),
              ),
            ),

            // Pelajaran Button
            Positioned(
              top: 765,
              left: 30,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PelajaranHal(),
                    ),
                  );

                },
                child: Image.asset(
                  'assets/images/Pelajaran Button.png',
                  width: 385,
                ),
              ),
            ),

            // Laporan Performa Button
            Positioned(
              top: 765,
              left: 420,
              child: GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AssessmentResults(),
                    ),
                  );

                },
                child: Image.asset(
                  'assets/images/Laporan Performa Button.png',
                  width: 385,
                ),
              ),
            ),

            // Homepage Button
            Positioned(
              top: 1062,
              left: 330,
              child: GestureDetector(
                onTap: () {
                  print("Homepage Pressed");
                },
                child: Image.asset(
                  'assets/images/Homepage Button.png',
                  width: 63,
                ),
              ),
            ),

            // Profile Button
            Positioned(
              top: 1062,
              left: 440,
              child: GestureDetector(
                onTap: () {
                  print("Profile Pressed");
                },
                child: Image.asset(
                  'assets/images/Profile Button.png',
                  width: 63,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}