import "package:flutter/material.dart";

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 70,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Column(
        children: [
          const SizedBox(height: 30),
          Row(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
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
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
