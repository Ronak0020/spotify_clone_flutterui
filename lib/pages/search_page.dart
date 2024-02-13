import "package:fluentui_system_icons/fluentui_system_icons.dart";
import "package:flutter/material.dart";
import "package:spotify_clone/components/genre_card.dart";

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            // floating: true,
            expandedHeight: 150,
            collapsedHeight: 80,
            backgroundColor: Theme.of(context).colorScheme.background,
            // flexibleSpace: FlexibleSpaceBar(
            // ),
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding:
                  const EdgeInsetsDirectional.only(start: 5, end: 5, top: 5),
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
                              "Search",
                              style: TextStyle(
                                  fontFamily: "Gotham-Black",
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(
                          FluentIcons.camera_16_regular,
                          color: Colors.white,
                          size: 32,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
              title: Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: Icon(
                        FluentIcons.search_12_regular,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      hintText: "What do you want to listen to?",
                      hintStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: "Gotham-Black",
                          fontSize: 14),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 25, bottom: 15), child: Text("Explore your genres", style: TextStyle(fontFamily: "Gotham-Black", fontSize: 16, color: Colors.white),),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [_genreGif("https://c.tenor.com/b_r5du0mGPgAAAAC/tenor.gif", "#electronic"),_genreGif("https://c.tenor.com/TSLlATx5t4gAAAAC/tenor.gif", "#future bass"),_genreGif("https://bestanimations.com/media/acoustic/1946918596acoustic-guitar-animated-gif-13.gif", "#motivation"),],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5, bottom: 10), child: Text("Browse all", style: TextStyle(fontFamily: "Gotham-Black", fontSize: 16, color: Colors.white),),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GenreCard(
                              color: Colors.pink.shade400, genre: "Music"),
                          GenreCard(
                              color: Colors.purple.shade600,
                              genre: "Live Events"),
                          GenreCard(
                              color: Colors.pinkAccent.shade400,
                              genre: "New Releases"),
                          GenreCard(
                              color: Colors.pink.shade700, genre: "Punjabi"),
                          GenreCard(
                              color: Colors.blue.shade900, genre: "Telugu"),
                          GenreCard(
                              color: Colors.purple.shade300,
                              genre: "Podcast New Releases"),
                          GenreCard(
                              color: Colors.blueGrey.shade300,
                              genre: "Business & Technology"),
                        ],
                      ),
                      const SizedBox(width: 16,),
                      Column(
                        children: [
                          GenreCard(
                              color: Colors.green.shade900, genre: "Podcasts"),
                          GenreCard(
                              color: Colors.indigo.shade900,
                              genre: "Made For You"),
                          GenreCard(
                              color: Colors.pink.shade400, genre: "Hindi"),
                          const GenreCard(color: Colors.brown, genre: "Tamil"),
                          GenreCard(
                              color: Colors.blue.shade900,
                              genre: "Podcast Charts"),
                          const GenreCard(color: Colors.red, genre: "Video Podcasts"),
                          GenreCard(
                              color: Colors.purple.shade300, genre: "Charts"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget _genreGif(String image, String text) => Container(
    height: 180,
    width: 95,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white
    ),
    child: Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.network(image, fit: BoxFit.cover,)),
        Opacity(opacity: 0.5, child: SizedBox.expand(child: Container(decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),),),),
        Positioned(bottom: 10, left: 5, child: Text(text, style: const TextStyle(fontFamily: "Gotham-Black", fontSize: 12),))
      ],
    )
  );
}
