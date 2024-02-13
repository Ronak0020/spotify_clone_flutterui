// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import "package:fluentui_system_icons/fluentui_system_icons.dart";
import "package:flutter/material.dart";
import "package:spotify_clone/components/playlist_card.dart";
import "package:spotify_clone/components/playlist_tiles.dart";
import "package:spotify_clone/components/recently_played.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 85,
              collapsedHeight: 56,
              backgroundColor: Theme.of(context).colorScheme.background,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(left: 5, bottom: 10, right: 5),
                expandedTitleScale: 1,
                title: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/474x/08/03/1e/08031e3f79a5a12506dd3554a325dd09.jpg"),
                      radius: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).highlightColor),
                      child: const Text(
                        "All",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.primary),
                      child: const Text(
                        "Music",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.primary),
                      child: const Text(
                        "Podcasts",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // SizedBox(height: 50,),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlaylistTiles(
                              text: "Liked Songs",
                              image:
                                  "https://misc.scdn.co/liked-songs/liked-songs-300.png"),
                          PlaylistTiles(
                              text: "Japanese soft and chill music 🌱",
                              image:
                                  "https://i.scdn.co/image/ab67706c0000da848409bf1af3b92282304aae7a"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlaylistTiles(
                            text:
                                "8D Music 2024 🎧 8D Audio | 8D Songs by 8D Tunes",
                            image:
                                "https://i.scdn.co/image/ab67706c0000da84c9fe2e0df0e9873550b8eb6f",
                          ),
                          PlaylistTiles(
                            text: "Bulletproof",
                            image:
                                "https://i.scdn.co/image/ab67616d0000b273713d4e57e59988150f31b0a3",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlaylistTiles(
                            text: "Lead You Home",
                            image:
                                "https://i.scdn.co/image/ab67616d00001e02702ed8d0dba5318936a48524",
                          ),
                          PlaylistTiles(
                            text:
                                "Japanese Lofi Chillpop - beats / music to sleep and relax",
                            image:
                                "https://i.scdn.co/image/ab67706c0000da846ad91f86cf1828528e2f5a35",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlaylistTiles(
                            text: "Japanese Songs",
                            image:
                                "https://mosaic.scdn.co/300/ab67616d00001e022794743c6eb13addc2b01420ab67616d00001e024b062591b6a5c15652dd2bb5ab67616d00001e02684d81c9356531f2a456b1c1ab67616d00001e02de2d1cf763ed06e6874e1e91",
                          ),
                          PlaylistTiles(
                            text:
                                "Bokuyaba: Boku no Kokoro no Yabai Yatsu Season 2 「 (僕は...) & (恋してる自分すら愛せるんだ) 」 僕の心のヤバイやつ  (OP/ED)",
                            image:
                                "https://i.scdn.co/image/ab67706c0000da84f269723fdbf41b54ce449567",
                          ),
                        ],
                      ),
                    ),

                    //================================================================================================
                    //================================================================================================
                    const SizedBox(
                      height: 25,
                    ),

                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://yt3.ggpht.com/EheSFbcJ46z--SL8MYL-fdz7gxgDX4VV67XkGXI4JXptqHWbjR8yjzmg53KgwV8jB3ILi-vV_cg=s900-c-k-c0x00ffffff-no-rj"),
                          radius: 25,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New release from",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "8D Tunes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: "Gotham-Black"),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).colorScheme.primary),
                      child: Row(
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image.network(
                                  "https://lh3.googleusercontent.com/pw/ABLVV86GXSCfIV_697qwv0ZBcbSsM4nuywehApCeZbiXX0-VXeV7XHttcKxqJrzEj4wwSkqs7REnzZk4DlnSzvCju2-SGOK0wX4-xPA_IwowNhJcqAmkG8DQlg3q7I3Zwm2RkAq-ZV23X-x5cSK_jnYWrqOD=w286-h285-s-no-gm?authuser=0",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Rockabye (8D Audio)",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Gotham-Black",
                                          fontSize: 13),
                                    ),
                                    Text(
                                      "Single • 8D Tunes",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FluentIcons.add_circle_12_regular,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      width: 88,
                                    ),
                                    const Icon(
                                      FluentIcons.play_circle_16_filled,
                                      color: Colors.white,
                                      size: 42,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // ========================================================================================================================
                    // ========================================================================================================================
                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      "Today's biggest hits",
                      style:
                          TextStyle(fontFamily: "Gotham-Black", fontSize: 24),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 190,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          PlaylistCard(
                              artists:
                                  "The Weeknd, Taylor Swift, Ed Sheeran, Arianna Grande",
                              image:
                                  "https://i.scdn.co/image/ab67706f00000003db32a17c1f5291b19317b62e"),
                          PlaylistCard(
                              artists:
                                  "Arianna Grande, The Weeknd, Taylor Swift, 21 Savage",
                              image:
                                  "https://i.scdn.co/image/ab67706f0000000272d0315075320473dc0df96d"),
                          PlaylistCard(
                              artists:
                                  "The Weeknd, Taylor Swift, Ed Sheeran, Arianna Grande",
                              image:
                                  "https://i.scdn.co/image/ab67706f000000033dea43365eb16182a263326e"),
                          PlaylistCard(
                              artists:
                                  "Arijit Singh, Taylor Swift, Ed Sheeran, Atif Aslam",
                              image:
                                  "https://i.scdn.co/image/ab67706f000000039b8d1245aebc440c764b5a86"),
                          PlaylistCard(
                              artists:
                                  "Arijit Singh, Pritam, Anirudh Ravichander, Atif Aslam",
                              image:
                                  "https://i.scdn.co/image/ab67706f00000003f185916a4a0a737d2ac0dc2c"),
                        ],
                      ),
                    ),

                    //======================================================================================================
                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      "Recently played",
                      style:
                          TextStyle(fontFamily: "Gotham-Black", fontSize: 24),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          RecentlyPlayed(
                              playlistName: "Japanese soft and chill music 🌱",
                              image:
                                  "https://i.scdn.co/image/ab67706c0000da848409bf1af3b92282304aae7a"),
                          RecentlyPlayed(
                              playlistName: "Liked Songs",
                              image:
                                  "https://misc.scdn.co/liked-songs/liked-songs-300.png"),
                          RecentlyPlayed(
                              playlistName: "Japanese Chillpop Mix",
                              image:
                                  "https://seed-mix-image.spotifycdn.com/v6/img/desc/Japanese%20Chillhop/en/default"),
                          RecentlyPlayed(
                              playlistName:
                                  "Japanese Lofi Chillpop - beats / music to sleep and relax",
                              image:
                                  "https://i.scdn.co/image/ab67706c0000da846ad91f86cf1828528e2f5a35"),
                          RecentlyPlayed(
                              playlistName: "Japanese Songs",
                              image:
                                  "https://mosaic.scdn.co/300/ab67616d00001e022794743c6eb13addc2b01420ab67616d00001e024b062591b6a5c15652dd2bb5ab67616d00001e02684d81c9356531f2a456b1c1ab67616d00001e02de2d1cf763ed06e6874e1e91"),
                          RecentlyPlayed(
                              playlistName:
                                  "Bokuyaba: Boku no Kokoro no Yabai Yatsu Season 2 「 (僕は...) & (恋してる自分すら愛せるんだ) 」 僕の心のヤバイやつ  (OP/ED)",
                              image:
                                  "https://i.scdn.co/image/ab67706c0000da84f269723fdbf41b54ce449567"),
                          RecentlyPlayed(
                              playlistName: "Deck The Hall (8D Audio)",
                              image:
                                  "https://i.scdn.co/image/ab67616d00001e0206fcb000114f4350de08330c"),
                          RecentlyPlayed(
                              playlistName: "Lead You Home",
                              image:
                                  "https://i.scdn.co/image/ab67616d00001e02702ed8d0dba5318936a48524"),
                        ],
                      ),
                    ),

                    //======================================================================================================
                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      "Your playlists",
                      style:
                          TextStyle(fontFamily: "Gotham-Black", fontSize: 24),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 201,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          PlaylistCard(
                            artists: "Playlist",
                            image:
                                "https://mosaic.scdn.co/300/ab67616d00001e022794743c6eb13addc2b01420ab67616d00001e024b062591b6a5c15652dd2bb5ab67616d00001e02684d81c9356531f2a456b1c1ab67616d00001e02de2d1cf763ed06e6874e1e91",
                            playlistName: "Japanese Songs",
                          ),
                          PlaylistCard(
                            artists: "Playlist • Just random nice songs",
                            image:
                                "https://i.scdn.co/image/ab67706c0000da84511a478e2c8302cd93fcfe16",
                            playlistName: "Nice Songs",
                          ),
                          PlaylistCard(
                            artists:
                                "Playlist created by the tutorial on developer.spotify.com",
                            image:
                                "https://mosaic.scdn.co/300/ab67616d00001e020c13d3d5a503c84fcc60ae94ab67616d00001e026d7c02467c47de371bceb59eab67616d00001e028265a736a1eb838ad5a0b921ab67616d00001e028863bc11d2aa12b54f5aeb36",
                            playlistName: "My recommendation playlist",
                          ),
                          PlaylistCard(
                            artists: "By Rem",
                            image:
                                "https://mosaic.scdn.co/300/ab67616d00001e028265a736a1eb838ad5a0b921ab67616d00001e028863bc11d2aa12b54f5aeb36ab67616d00001e028ad8f5243d6534e03b656c8bab67616d00001e02b852a616ae3a49a1f6b0f16e",
                            playlistName: "For Frens",
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
