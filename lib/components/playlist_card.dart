import "package:flutter/material.dart";

class PlaylistCard extends StatelessWidget {
  final String? playlistName;
  final String artists;
  final String image;
  const PlaylistCard(
      {super.key,
      required this.artists,
      required this.image,
      this.playlistName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 140,
                width: 140,
                child: Image.network(image, fit: BoxFit.cover,),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          if (playlistName != null)
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 140),
              child: Text(
                playlistName!,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Gotham-Black",
                    fontSize: 12),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 1,
              ),
            ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 140),
              child: Text(
                artists,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 2,
              ))
        ],
      ),
    );
  }
}
