import "package:flutter/material.dart";

class PlaylistTiles extends StatelessWidget {
  final String text;
  final String image;
  const PlaylistTiles({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).colorScheme.primary),
      height: 55,
      width: 160,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            height: 55,
            width: 55,
            child: Image.network(image, fit: BoxFit.cover,),
          ),
          const SizedBox(
            width: 10,
          ),
          ConstrainedBox(constraints: const BoxConstraints(maxWidth: 90), child: Text(text, style: const TextStyle(fontSize: 11, fontFamily: "Gotham-Black"), softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,))
        ],
      ),
    );
  }
}
