import "package:fluentui_system_icons/fluentui_system_icons.dart";
import "package:flutter/material.dart";
import "package:spotify_clone/components/library_tiles.dart";

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 0, top: 5, right: 5),
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          toolbarHeight: 135,
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1,
            titlePadding:
                const EdgeInsetsDirectional.only(start: 15, end: 5, top: 5, bottom: 10),
            background: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/474x/08/03/1e/08031e3f79a5a12506dd3554a325dd09.jpg"),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Your Library",
                            style: TextStyle(
                                fontFamily: "Gotham-Black",
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FluentIcons.search_12_regular,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(width: 20,),
                          Icon(
                            FluentIcons.add_12_regular,
                            color: Colors.white,
                            size: 28,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).colorScheme.primary),
                  padding: const EdgeInsets.symmetric(
                      vertical: 9, horizontal: 14),
                  child: const Text("Playlists", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).colorScheme.primary),
                  padding: const EdgeInsets.symmetric(
                      vertical: 9, horizontal: 14),
                  child: const Text("Podcasts", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).colorScheme.primary),
                  padding: const EdgeInsets.symmetric(
                      vertical: 9, horizontal: 14),
                  child: const Text("Artists", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: const [
            ListTile(leading: Icon(FluentIcons.arrow_autofit_height_in_20_regular, color: Colors.white, size: 18,), title: Text("Recents", style: TextStyle(fontFamily: "Gotham-Black", fontSize: 14),), trailing: Icon(FluentIcons.grid_16_regular, size: 20,),),
            LibraryTiles(image: "https://misc.scdn.co/liked-songs/liked-songs-300.png", title: "Liked Songs", subtitle: "Playlist • 662 songs", pinned: true,),
            LibraryTiles(image: "https://i.scdn.co/image/ab67706c0000da848409bf1af3b92282304aae7a", title: "Japanese soft and chill music 🌱", subtitle: "Playlist • Galaxiaa♡",),
            LibraryTiles(image: "https://mosaic.scdn.co/300/ab67616d00001e022794743c6eb13addc2b01420ab67616d00001e024b062591b6a5c15652dd2bb5ab67616d00001e02684d81c9356531f2a456b1c1ab67616d00001e02de2d1cf763ed06e6874e1e91", title: "Japanese Songs", subtitle: "Playlist • Rem",),
            LibraryTiles(image: "https://i.scdn.co/image/ab67706c0000da84c9fe2e0df0e9873550b8eb6f", title: "8D Music 2024 🎧 8D Audio | 8D Songs by 8D Tunes", subtitle: "Playlist • 8D TUNES",),
            LibraryTiles(image: "https://i.scdn.co/image/ab67706c0000da84ac22df3d16713456bfdc3e50", title: "Japanese Piano Music", subtitle: "Playlist • Piano Peace",),
            LibraryTiles(image: "https://i.scdn.co/image/ab67706c0000da84511a478e2c8302cd93fcfe16", title: "Nice Songs", subtitle: "Playlist • Rem",),
            LibraryTiles(image: "https://mosaic.scdn.co/300/ab67616d00001e020c13d3d5a503c84fcc60ae94ab67616d00001e026d7c02467c47de371bceb59eab67616d00001e028265a736a1eb838ad5a0b921ab67616d00001e028863bc11d2aa12b54f5aeb36", title: "My recommendation playlist", subtitle: "Playlist • Rem",),
            LibraryTiles(image: "https://www.newsday.com/_next/image?url=https%3A%2F%2Fcdn.newsday.com%2Fimage-service%2Fversion%2Fc%3ANDU0ZDQ5YzMtYzMxNC00%3AYjJjYThh%2Fed-sheeran-cropped.jpg%3Ff%3DLandscape%2B16%253A9%26w%3D770%26q%3D1&w=828&q=80", title: "Ed Sheeran", subtitle: "Artist", artist: true),
            LibraryTiles(image: "https://i.scdn.co/image/ab67706c0000da84f269723fdbf41b54ce449567", title: "Bokuyaba: Boku no Kokoro no Yabai Yatsu Season 2 「 (僕は...) & (恋してる自分すら愛せるんだ) 」 僕の心のヤバイやつ  (OP/ED)", subtitle: "Bokuyaba: The Sangers in My Heart",),
            LibraryTiles(image: "https://www.billboard.com/wp-content/uploads/2020/04/eminem-press-photo-2019-aqu-billboard-1548-1587659998.jpg", title: "Eminem", subtitle: "Artist", artist: true),
            LibraryTiles(image: "https://misc.scdn.co/your-episodes/SE-64.png", title: "Your Episodes", subtitle: "Saved and downloaded episodes"),

            SizedBox(height: 100,)
          ],
        ),
      ),
    ));
  }
}
