import "package:flutter/material.dart";

class GenreCard extends StatelessWidget {
  final Color color;
  final String genre;
  const GenreCard({super.key, required this.color, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 85,
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Text(genre, style: const TextStyle(color: Colors.white, fontFamily: "Gotham-Black", fontSize: 16),),
      ),
    );
  }
}