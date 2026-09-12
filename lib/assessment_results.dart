import 'package:flutter/material.dart';
import 'homepage.dart';

class AssessmentResults extends StatelessWidget {
  const AssessmentResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
      ),

      body: Container(
        color: const Color(0xFFF8F9FF),

        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 25),

              //----------------------------------------
              // Rekomendasi
              //----------------------------------------

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Rekomendasi Pembelajaran",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              SizedBox(
                height: 210,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),

                  children: [

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 15,
                      ),

                      child: GestureDetector(
                        onTap: () {},

                        child: Image.asset(
                          "assets/images/Kelas/MTK4-6thn.png",
                          width: 320,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15),

                      child: GestureDetector(
                        onTap: () {},

                        child: Image.asset(
                          "assets/images/Kelas/ABAVB18-30.png",
                          width: 320,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 20),

                      child: GestureDetector(
                        onTap: () {},

                        child: Image.asset(
                          "assets/images/Kelas/ABAPEAK~4.png",
                          width: 320,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 35),

              //----------------------------------------
              // Detail
              //----------------------------------------

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Detail Hasil Assessment",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: Image.asset(
                  "assets/images/Kelas/results_table.png",
                  width: 800,
                ),
              ),

              const SizedBox(height: 40),

            ],
          ),
        ),
      ),
    );
  }
}