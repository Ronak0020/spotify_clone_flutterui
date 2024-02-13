import "package:flutter/material.dart";

class RecentlyPlayed extends StatelessWidget {
  final String playlistName;
  final String image;
  const RecentlyPlayed({super.key, required this.playlistName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(height: 105, width: 105, child: Image.network(image),)
            ],
          ),
          const SizedBox(height: 10,),
          ConstrainedBox(constraints: const BoxConstraints(maxWidth: 105) , child: Text(playlistName, style: const TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Gotham-Black"), overflow: TextOverflow.ellipsis, softWrap: true, maxLines: 2,))
        ],
      ),
    );
  }
}