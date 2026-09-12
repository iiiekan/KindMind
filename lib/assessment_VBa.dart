import 'package:flutter/material.dart';
import 'assessment_VBd.dart';
import 'package:audioplayers/audioplayers.dart';

class AssessmentVBa extends StatefulWidget {
  const AssessmentVBa({super.key});

  @override
  State<AssessmentVBa> createState() => _AssessmentVBaState();
}

class _AssessmentVBaState extends State<AssessmentVBa> {
  final AudioPlayer player = AudioPlayer();

  bool showCorrect = false;

    @override
    void initState() {
      super.initState();
      playInstruction();
    }
    
    Future<void> playInstruction() async {
      await player.play(
        AssetSource("audio/masukkan_bola.mp3"),
      );
    }
    
    @override
    void dispose() {
      player.dispose();
      super.dispose();
    }

  Widget draggableItem(String image) {

    return Draggable<String>(

      data: image,

      feedback: Material(
        color: Colors.transparent,
        child: Image.asset(
          "assets/images/Pembelajaran/$image.png",
          width: 105,
        ),
      ),

      childWhenDragging: Opacity(
        opacity: .3,
        child: SizedBox(
          width: 120,
          height: 120,
          child: Image.asset(
            "assets/images/Pembelajaran/$image.png",
            width: 105,
          ),
        ),
      ),

      child: SizedBox(
        width: 120,
        height: 120,
        child: Image.asset(
          "assets/images/Pembelajaran/$image.png",
          width: 105,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(""),
      ),

      body: Stack(

        children: [

          //----------------------------------------
          // DANZEL
          //----------------------------------------

          Positioned(
            top: 30,
            left: 35,
            child: Image.asset(
              "assets/images/Pembelajaran/DanzelCrop.png",
              width: 135,
            ),
          ),

          //----------------------------------------
          // SPEECH BUBBLE
          //----------------------------------------

          Positioned(
            top: 50,
            left: 185,
            child: Container(
              width: 490,
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 18,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.black12,
                  )
                ],
              ),
              child: const Text(
                "Masukkan bola ke dalam kotak ya!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //----------------------------------------
          // SEMUA BARANG
          //----------------------------------------

          Positioned(
            top: 210,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 430,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 18,
                  runSpacing: 18,
                  children: [

                    draggableItem("bag"),
                    draggableItem("shoes"),
                    draggableItem("ball"),

                    draggableItem("bottle"),
                    draggableItem("mango"),
                    draggableItem("lunchbox"),

                  ],
                ),
              ),
            ),
          ),

          //----------------------------------------
          // BOX
          //----------------------------------------

          Positioned(
            bottom: 90,
            left: 0,
            right: 0,
            child: Center(
              child: DragTarget<String>(

                onAcceptWithDetails: (details) {

                  if (details.data == "ball") {

                    setState(() {
                      showCorrect = true;
                    });

                    Future.delayed(
                      const Duration(seconds: 1),
                      () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AssessmentVBd(),
                          ),
                        );

                      },
                    );

                  }

                  else {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('audio/IncorrectAudio.mp3'),
                    );
                  }

                },

                builder: (context, candidate, rejected) {

                  return Image.asset(
                    "assets/images/Pembelajaran/box.png",
                    width: 240,
                  );

                },

              ),
            ),
          ),

          //----------------------------------------
          // POPUP BENAR
          //----------------------------------------

          if(showCorrect)

          Container(

            color: Colors.black38,

            child: Center(

              child: Container(

                width: 280,

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

                    SizedBox(height: 15),

                    Text(
                      "Hebat!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )

                  ],

                ),

              ),

            ),

          ),

        ],

      ),

    );

  }

}