import 'package:flutter/material.dart';
import 'homepage.dart';
import 'assessment_intro.dart';
import 'MTK1.dart';

class PelajaranHal extends StatelessWidget {
  const PelajaranHal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pelajaran"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const Homepage(),
              ),
            );
          },
        ),
      ),

      body: Stack(
        children: [

          //----------------------------------------
          // Background
          //----------------------------------------

          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Background2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //----------------------------------------
          // Main Content
          //----------------------------------------

          SafeArea(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(25, 40, 0, 40),
              children: [

                //----------------------------------------
                // Assessment
                //----------------------------------------

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AssessmentIntro(),
                      ),
                    );
                  },
                  child: Center(
                    child: Image.asset(
                      "assets/images/Pembelajaran/TesDiagnostik.png",
                      width: 730,
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                //----------------------------------------
                // Title
                //----------------------------------------

                const Text(
                  "Kelas yang Tersedia",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                //----------------------------------------
                // Matematika
                //----------------------------------------

                const Text(
                  "Matematika",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MTK1(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/images/Kelas/MTK3-4thn.png",
                            width: 420,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            // TODO: MTK2 Page
                          },
                          child: Image.asset(
                            "assets/images/Kelas/MTK4-6thn.png",
                            width: 420,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                //----------------------------------------
                // ABA-VB
                //----------------------------------------

                const Text(
                  "ABA–VB",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 3),

                const Text(
                  "(Applied Behavior Analysis - Verbal Behavior)",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            // TODO
                          },
                          child: Image.asset(
                            "assets/images/Kelas/ABAVB~18.png",
                            width: 420,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            // TODO
                          },
                          child: Image.asset(
                            "assets/images/Kelas/ABAVB18-30.png",
                            width: 420,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                //----------------------------------------
                // ABA-PEAK
                //----------------------------------------

                const Text(
                  "ABA–PEAK",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 3),

                const Text(
                  "(Applied Behavior Analysis - Promoting the Emergence of Advanced Knowledge)",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            // TODO
                          },
                          child: Image.asset(
                            "assets/images/Kelas/ABAPEAK~4.png",
                            width: 420,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {
                            // TODO
                          },
                          child: Image.asset(
                            "assets/images/Kelas/ABAPEAK~8.png",
                            width: 420,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

              ],
            ),
          ),
        ],
      ),
    );
  }
}