import 'package:flutter/material.dart';
import 'package:online_learning/Widget/botton_nav_bar.dart';
import 'package:online_learning/screen/Home/body_parts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: const BodyParts(),
      bottomNavigationBar: const myBottomNavigationBar(),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: const Color(0xFF9D0000), // fondo rojo oscuro
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "Hello, Rusdi",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // texto blanco
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://raw.githubusercontent.com/Emiliano-De-Santiago-1060/Snacks_imagenes_app_flutter/refs/heads/main/fresas.jpg',
            ),
            radius: 18,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://raw.githubusercontent.com/Emiliano-De-Santiago-1060/Snacks_imagenes_app_flutter/refs/heads/main/papaslocas.jpg',
            ),
            radius: 18,
          ),
        ),
      ],
    );
  }
}
