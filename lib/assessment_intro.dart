import 'package:flutter/material.dart';
import 'assessment_VBb.dart';

class AssessmentIntro extends StatelessWidget {
  const AssessmentIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Assessment Awal"),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            // nanti diganti maskot
            Image.asset(
              "assets/images/Pembelajaran/Danzel.png",
              width: 130,
            ),

            const SizedBox(height: 40),

            const Text(
                "Halo! Aku Danzel!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Aku akan menemanimu bermain hari ini.\nYuk kita mulai!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 130),

            SizedBox(
                width: 220,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AssessmentVBb(),
                            ),
                        );
                    },
                    child: const Text(
                        "Mulai",
                        style: TextStyle(fontSize: 24),
                    ),
                ),
            ),

            ],
          ),
        ),
      ),
    );
  }
}