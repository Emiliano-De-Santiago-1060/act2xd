import 'package:flutter/material.dart';
import 'package:online_learning/Widget/welcom_text.dart';
import 'package:online_learning/screen/Detail/detail_screen.dart';

class BodyParts extends StatelessWidget {
  const BodyParts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Texto de bienvenida
        welcomeText(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MultimediaCard(
                image:
                    "https://raw.githubusercontent.com/Emiliano-De-Santiago-1060/Snacks_imagenes_app_flutter/refs/heads/main/Fresas.webp",
                check: true,
              ),
              MultimediaCard(
                image:
                    "https://raw.githubusercontent.com/Emiliano-De-Santiago-1060/Snacks_imagenes_app_flutter/refs/heads/main/Fresas.webp",
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MultimediaCard(
                image:
                    "https://raw.githubusercontent.com/Emiliano-De-Santiago-1060/Snacks_imagenes_app_flutter/refs/heads/main/Fresas.webp",
              ),
              MultimediaCard(
                image:
                    "https://raw.githubusercontent.com/Emiliano-De-Santiago-1060/Snacks_imagenes_app_flutter/refs/heads/main/Fresas.webp",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MultimediaCard extends StatelessWidget {
  const MultimediaCard({
    super.key,
    this.check = false,
    required this.image,
  });

  final bool check;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailScreen()));
      },
      child: Container(
        width: 180,
        height: 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: check ? const Color(0xFF9D0000) : const Color(0xFFFFF4F4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Multimedia",
              style: TextStyle(
                fontSize: 16,
                color: check ? Colors.white : Colors.black54,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "Lorem ipaum dolor sit amet",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: check ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 3,
                  width: 30,
                  color: check ? Colors.white : Colors.grey[300],
                ),
                Container(
                  height: 3,
                  width: 80,
                  color: Colors.grey[400],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Image.network(
                image,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
