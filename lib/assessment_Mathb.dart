import 'package:flutter/material.dart';
import 'assessment_Mathc.dart';
import 'package:audioplayers/audioplayers.dart';

class AssessmentMathb extends StatefulWidget {
  const AssessmentMathb({super.key});

  @override
  State<AssessmentMathb> createState() => _AssessmentMathbState();
}

class _AssessmentMathbState extends State<AssessmentMathb> {
  final AudioPlayer player = AudioPlayer();

  bool showCorrect = false;

    @override
    void initState() {
      super.initState();
      playInstruction();
    }
    
    Future<void> playInstruction() async {
      await player.play(
        AssetSource("audio/gambar_apa.mp3"),
      );
    }
    
    @override
    void dispose() {
      player.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),

      body: Stack(

        children: [

          //---------------------------------------
          // Background
          //---------------------------------------

          Container(
            color: Colors.white,
          ),

          //---------------------------------------
          // Danzel
          //---------------------------------------

          Positioned(
            top: 40,
            left: 60,
            child: Image.asset(
              "assets/images/Pembelajaran/DanzelCrop.png",
              width: 150,
            ),
          ),

          //---------------------------------------
          // Speech Bubble
          //---------------------------------------

          Positioned(
            top: 60,
            left: 220,
            child: Container(
              width: 470,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: const Text(
                "Ini gambar apa ya?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          //---------------------------------------
          // Picture
          //---------------------------------------

          Positioned(
            top: 260,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                "assets/images/Pembelajaran/circle.png",
                width: 280,
              ),
            ),
          ),

          //---------------------------------------
          // Instruction
          //---------------------------------------

          const Positioned(
            top: 570,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Ucapkan jawabanmu dengan keras ya!",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),

          //---------------------------------------
          // Fake Microphone Button
          //---------------------------------------

          Positioned(
            bottom: 130,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(

                onTap: () {

                  setState(() {
                    showCorrect = true;
                  });

                  Future.delayed(
                    const Duration(seconds: 1),
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AssessmentMathc(),
                        ),
                      );

                    },
                  );

                },

                child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: 55,
                  ),
                ),
              ),
            ),
          ),

          //---------------------------------------
          // Caption
          //---------------------------------------

          const Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Tekan setelah selesai menjawab",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),

          //---------------------------------------
          // Correct Popup
          //---------------------------------------

          if (showCorrect)
            Positioned.fill(
              child: Container(
                color: Colors.black38,
                child: Center(
                  child: Container(
                    width: 320,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 90,
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Hebat!",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Jawabanmu benar!",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }
}