import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'assessment_Matha.dart';

class AssessmentVBd extends StatefulWidget {
  const AssessmentVBd({super.key});

  @override
  State<AssessmentVBd> createState() => _AssessmentVBdState();
}

class _AssessmentVBdState extends State<AssessmentVBd> {

  final AudioPlayer player = AudioPlayer();

  bool showCorrect = false;

  bool dogDone = false;
  bool shirtDone = false;
  bool flowerDone = false;

  @override
  void initState() {
    super.initState();
    playInstruction();
  }

  Future<void> playInstruction() async {
    await player.play(
      AssetSource("audio/cocokkan_gambar.mp3"),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void checkFinished() {
    if (dogDone && shirtDone && flowerDone) {

      setState(() {
        showCorrect = true;
      });

      Future.delayed(
        const Duration(seconds: 1),
        () {

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const AssessmentMatha(),
            ),
          );

        },
      );
    }
  }

  Widget draggableItem(String image) {

    return Draggable<String>(

      data: image,

      feedback: Material(
        color: Colors.transparent,
        child: Image.asset(
          "assets/images/Pembelajaran/$image.png",
          width: 100,
        ),
      ),

      childWhenDragging: Opacity(
        opacity: .3,
        child: Image.asset(
          "assets/images/Pembelajaran/$image.png",
          width: 100,
        ),
      ),

      child: Image.asset(
        "assets/images/Pembelajaran/$image.png",
        width: 100,
      ),

    );
  }

  Widget targetBox(
    String target,
    String image,
    bool done,
    Function() onCorrect,
  ) {

    return DragTarget<String>(

      onAcceptWithDetails: (details) {

        if (details.data == target) {

          onCorrect();

          checkFinished();

        } else {

          player.play(
            AssetSource("audio/IncorrectAudio.mp3"),
          );

        }

      },

      builder: (context, candidate, rejected) {

        return Opacity(

          opacity: done ? .35 : 1,

          child: Image.asset(
            "assets/images/Pembelajaran/$image.png",
            width: 165,
          ),

        );

      },

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

          //-----------------------------------
          // DANZEL
          //-----------------------------------

          Positioned(
            top: 35,
            left: 35,
            child: Image.asset(
              "assets/images/Pembelajaran/DanzelCrop.png",
              width: 140,
            ),
          ),

          //-----------------------------------
          // SPEECH BUBBLE
          //-----------------------------------

          Positioned(
            top: 55,
            left: 185,
            child: Container(

              width: 500,

              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.circular(20),

                boxShadow: const [

                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                  )

                ],

              ),

              child: const Text(

                "Cocokkan dengan gambar yang sesuai!",

                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),

              ),

            ),
          ),

          //-----------------------------------
          // DRAG ITEMS
          //-----------------------------------

          Positioned(

            top: 220,
            left: 0,
            right: 0,

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                draggableItem("dog"),
                draggableItem("shirt"),
                draggableItem("flower"),

              ],

            ),

          ),

          //-----------------------------------
          // TARGETS
          //-----------------------------------

          Positioned(

            bottom: 100,
            left: 0,
            right: 0,

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                targetBox(
                  "dog",
                  "dog2",
                  dogDone,
                  () {
                    setState(() {
                      dogDone = true;
                    });
                  },
                ),

                targetBox(
                  "shirt",
                  "shirt2",
                  shirtDone,
                  () {
                    setState(() {
                      shirtDone = true;
                    });
                  },
                ),

                targetBox(
                  "flower",
                  "flower2",
                  flowerDone,
                  () {
                    setState(() {
                      flowerDone = true;
                    });
                  },
                ),

              ],

            ),

          ),

          //-----------------------------------
          // POPUP
          //-----------------------------------

          if(showCorrect)

          Positioned.fill(

            child: Container(

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

                      SizedBox(height: 18),

                      Text(
                        "Hebat!",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
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