import 'package:flutter/material.dart';
import 'marah_sshal.dart';
import 'homepage.dart';

class SocialStoriesHal extends StatelessWidget {
  const SocialStoriesHal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Stories"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Homepage(),
              ),
            );
          },
        ),
      ),

      body: Stack(
        children: [
          
          // Jika saya marah Button
          Positioned(
            top: 30,
            left: 22,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Kata2yangBaikHal(),
                    ),
                );
              },
              child: Image.asset(
                'assets/images/Jika saya marah_ss.png',
                width: 390,
              ),
            ),
          ),

          // Pergi ke Sekolah Button
          Positioned(
            top: 30,
            left: 422,
            child: GestureDetector(
              onTap: () {
                print('Pergi ke Sekolah Button Pressed');
              },
              child: Image.asset(
                'assets/images/Pergi ke Sekolah_ss.png',
                width: 390,
              ),
            ),
          ),

          // Menunggu Sesuatu Button
          Positioned(
            top: 200,
            left: 22,
            child: GestureDetector(
              onTap: () {
                print('Menunggu Sesuatu Button Pressed');
              },
              child: Image.asset(
                'assets/images/Menunggu Sesuatu_ss.png',
                width: 390,
              ),
            ),
          ),

          // Bermain dengan Teman Button
          Positioned(
            top: 200,
            left: 422,
            child: GestureDetector(
              onTap: () {
                print('Bermain dengan Teman Button Pressed');
              },
              child: Image.asset(
                'assets/images/Bermain dengan teman_ss.png',
                width: 390,
              ),
            ),
          ),
        ]
      ),
    );
  }
}