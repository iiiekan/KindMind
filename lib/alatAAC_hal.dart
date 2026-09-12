import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AlatAACHal extends StatefulWidget {
  const AlatAACHal({super.key});

  @override
  State<AlatAACHal> createState() => _AlatAACHalState();
}

class _AlatAACHalState extends State<AlatAACHal> {
  final AudioPlayer player = AudioPlayer();
  List<String> selectedImages = [];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alat AAC'),
        actions: [
          IconButton(
            tooltip: 'Hapus',
            onPressed: () {
              setState(() {
                selectedImages.clear();
              });
            },
            icon: const Icon(Icons.delete),
          )
        ]
      ),

      body: Stack(
        children:[
          
          // Kalimat yang sedang disusun
          Positioned(
            top: 45,
            left: 80,
            child: Row(
              children: selectedImages.map((imagePath) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset(
                    imagePath,
                    width: 120,
                    ),
                  );
              }).toList(),
            ),
          ),

          // Pergi Button
          Positioned(
            top: 240,
            left: 80,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/PergiAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/PergiAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/PergiAAC.png',
                width: 130,
              ),
            ),
          ),

          // Aku Button
          Positioned(
            top: 240,
            left: 218,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/AkuAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/AkuAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/AkuAAC.png',
                width: 130,
              ),
            ),
          ),

          // Ini Button
          Positioned(
            top: 240,
            left: 356,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/IniAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/IniAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/IniAAC.png',
                width: 130,
              ),
            ),
          ),

          // Itu Button
          Positioned(
            top: 240,
            left: 494,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/ItuAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/ItuAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/ItuAAC.png',
                width: 130,
              ),
            ),
          ),

          // Mau Button
          Positioned(
            top: 240,
            left: 632,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/MauAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/MauAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/MauAAC.png',
                width: 130,
              ),
            ),
          ),

          // Lihat Button
          Positioned(
            top: 410,
            left: 80,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/LihatAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/LihatAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/LihatAAC.png',
                width: 130,
              ),
            ),
          ),

          // Untuk Button
          Positioned(
            top: 410,
            left: 218,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/UntukAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/UntukAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/UntukAAC.png',
                width: 130,
              ),
            ),
          ),

          // Ke Button
          Positioned(
            top: 410,
            left: 356,
            child: GestureDetector(
              onTap: () {
                print('Ke Button Pressed');
              },
              child: Image.asset(
                'assets/images/AAC Components/KeAAC.png',
                width: 130,
              ),
            ),
          ),

          // Dengan Button
          Positioned(
            top: 410,
            left: 494,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/DenganAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/DenganAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/DenganAAC.png',
                width: 130,
              ),
            ),
          ),

          // Berhenti Button
          Positioned(
            top: 410,
            left: 632,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/BerhentiAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/BerhentiAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/BerhentiAAC.png',
                width: 130,
              ),
            ),
          ),

          // Tidur Button
          Positioned(
            top: 580,
            left: 80,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/TidurAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/TidurAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/TidurAAC.png',
                width: 130,
              ),
            ),
          ),

          // Makan Button
          Positioned(
            top: 580,
            left: 218,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/EatAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/MakanAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/EatAAC.png',
                width: 130,
              ),
            ),
          ),

          // Mandi Button
          Positioned(
            top: 580,
            left: 356,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/MandiAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/MandiAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/MandiAAC.png',
                width: 130,
              ),
            ),
          ),

          // Susu Button
          Positioned(
            top: 580,
            left: 494,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/SusuAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/SusuAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/SusuAAC.png',
                width: 130,
              ),
            ),
          ),

          // Belajar Button
          Positioned(
            top: 580,
            left: 632,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/BelajarAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/BelajarAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/BelajarAAC.png',
                width: 130,
              ),
            ),
          ),

          // Ayah Button
          Positioned(
            top: 750,
            left: 80,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/AyahAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/AyahAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/AyahAAC.png',
                width: 130,
              ),
            ),
          ),

          // Bunda Button
          Positioned(
            top: 750,
            left: 218,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/BundaAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/BundaAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/BundaAAC.png',
                width: 130,
              ),
            ),
          ),

          // Kakek Button
          Positioned(
            top: 750,
            left: 356,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/KakekAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/KakekAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/KakekAAC.png',
                width: 130,
              ),
            ),
          ),

          // Nenek Button
          Positioned(
            top: 750,
            left: 494,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/NenekAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/NenekAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/NenekAAC.png',
                width: 130,
              ),
            ),
          ),

          // Kakak Perempuan Button
          Positioned(
            top: 750,
            left: 632,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/Kakak_PerempuanAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/Kakak_PerempuanAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/Kakak_PerempuanAAC.png',
                width: 130,
              ),
            ),
          ),

          // Tolong Button
          Positioned(
            top: 920,
            left: 80,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/TolongAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/TolongAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/TolongAAC.png',
                width: 130,
              ),
            ),
          ),

          // Ambil Button
          Positioned(
            top: 920,
            left: 218,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/AmbilAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/AmbilAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/AmbilAAC.png',
                width: 130,
              ),
            ),
          ),

          // Ambil Button
          Positioned(
            top: 920,
            left: 218,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/AmbilAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/AmbilAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/AmbilAAC.png',
                width: 130,
              ),
            ),
          ),

          // Iya Button
          Positioned(
            top: 920,
            left: 356,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/IyaAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/IyaAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/IyaAAC.png',
                width: 130,
              ),
            ),
          ),

          // Tidak Button
          Positioned(
            top: 920,
            left: 494,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/TidakAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/TidakAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/TidakAAC.png',
                width: 130,
              ),
            ),
          ),

          // Sakit Button
          Positioned(
            top: 920,
            left: 632,
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedImages.add(
                    'assets/images/AAC Components/SakitAAC.png',);
                });
                
                await player.play(
                  AssetSource('audio/SakitAAC.mp3'),
                );
              },
              child: Image.asset(
                'assets/images/AAC Components/SakitAAC.png',
                width: 130,
              ),
            ),
          ),
        ]
      )
    );
  }
}