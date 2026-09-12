import 'package:flutter/material.dart';
import 'assessment_results.dart';
import 'package:audioplayers/audioplayers.dart';

class AssessmentMathc extends StatefulWidget {
  const AssessmentMathc({super.key});

  @override
  State<AssessmentMathc> createState() => _AssessmentMathcState();
}

class _AssessmentMathcState extends State<AssessmentMathc> {
  final AudioPlayer player = AudioPlayer();

  bool showCorrect = false;

    @override
    void initState() {
      super.initState();
      playInstruction();
    }
    
    Future<void> playInstruction() async {
      await player.play(
        AssetSource("lima_tambah_lima.mp3"),
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
                "5 + 5 sama dengan berapa ya?",
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
            left: 350,
            right: 0,
            child: Center(
              child: Image.asset(
                "assets/images/Pembelajaran/five.png",
                width: 140,
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                "assets/images/Pembelajaran/plus.png",
                width: 140,
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 0,
            right: 350,
            child: Center(
              child: Image.asset(
                "assets/images/Pembelajaran/five.png",
                width: 140,
              ),
            ),
          ),
          Positioned(
            top: 530,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                "assets/images/Pembelajaran/equal.png",
                width: 140,
              ),
            ),
          ),
          

          //---------------------------------------
          // Correct Answer Button
          //---------------------------------------

          Positioned(
            bottom: 100,
            left: 300,
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
                          builder: (_) => const AssessmentResults(),
                        ),
                      );

                    },
                  );

                },

                child: Center(
                    child: Image.asset(
                        "assets/images/Pembelajaran/ten.png",
                        width: 180,
                    ),
                ),
              ),
            ),
          ),

          //---------------------------------------
          // Incorrect Answer Button
          //---------------------------------------
          
          Positioned(
            bottom: 100,
            left: 0,
            right: 320,
            child: Center(
                child: GestureDetector(
                    onTap: () {
                        player.play(
                            AssetSource("audio/IncorrectAudio.mp3"),
                        );
                    },
                    
                    child: Image.asset(
                        "assets/images/Pembelajaran/eight.png",
                        width: 180,
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