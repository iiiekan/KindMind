import 'package:flutter/material.dart';

class MTK1 extends StatelessWidget {
  const MTK1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matematika (3–4 Tahun)"),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background2.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(25),

          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 0,
            childAspectRatio: 1.35,

            children: [

              //----------------------------------------
              // Berhitung
              //----------------------------------------

              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => const BerhitungPage(),
                  //   ),
                  // );
                },

                child: Image.asset(
                  "assets/images/Kelas/berhitung1-10.png",
                ),
              ),

              //----------------------------------------
              // Mengenal Angka
              //----------------------------------------

              GestureDetector(
                onTap: () {
                  // Navigator.push(...)
                },

                child: Image.asset(
                  "assets/images/Kelas/mengenal_angka.png",
                ),
              ),

              //----------------------------------------
              // Bentuk Dasar
              //----------------------------------------

              GestureDetector(
                onTap: () {
                  // Navigator.push(...)
                },

                child: Image.asset(
                  "assets/images/Kelas/bentuk_dasar.png",
                ),
              ),

              //----------------------------------------
              // Ukuran
              //----------------------------------------

              GestureDetector(
                onTap: () {
                  // Navigator.push(...)
                },

                child: Image.asset(
                  "assets/images/Kelas/perbandingan_ukuran.png",
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}