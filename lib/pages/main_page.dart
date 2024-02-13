import "package:fluentui_system_icons/fluentui_system_icons.dart";
import "package:flutter/material.dart";
import "package:spotify_clone/pages/home_page.dart";
import "package:spotify_clone/pages/library_page.dart";
import "package:spotify_clone/pages/search_page.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

List _pages = [const HomePage(), const SearchPage(), const LibraryPage()];

class _MainPageState extends State<MainPage> {
  int _currentPageIndex = 0;

  @override
  void initState() {
    _currentPageIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              _pages[_currentPageIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(0, 0, 0, 0),
                            Colors.black.withAlpha(220)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.2, 0.65])),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomNavigationBar(
                        backgroundColor: Colors.transparent,
                        onTap: (value) {
                          setState(() {
                            _currentPageIndex = value;
                          });
                        },
                        elevation: 0,
                        currentIndex: _currentPageIndex,
                        type: BottomNavigationBarType.fixed,
                        useLegacyColorScheme: false,
                        showUnselectedLabels: true,
                        selectedLabelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                        unselectedLabelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary),
                        selectedIconTheme: IconThemeData(
                            size: screenHeight * 0.038,
                            shadows: [
                              Shadow(
                                  color: Theme.of(context).shadowColor,
                                  blurRadius: 2)
                            ],
                            color: Theme.of(context).colorScheme.secondary),
                        unselectedIconTheme: IconThemeData(
                            color: Theme.of(context).colorScheme.primary),
                        items: const [
                          BottomNavigationBarItem(
                              icon: Icon(
                                FluentIcons.home_12_regular,
                              ),
                              label: "Home",
                              activeIcon: Icon(
                                FluentIcons.home_12_filled,
                              ),
                              tooltip: "Home"),
                          BottomNavigationBarItem(
                              icon: Icon(
                                FluentIcons.search_12_regular,
                              ),
                              label: "Status",
                              activeIcon: Icon(
                                FluentIcons.search_12_filled,
                              ),
                              tooltip: "Search"),
                          BottomNavigationBarItem(
                              icon: Icon(
                                FluentIcons.library_16_regular,
                              ),
                              label: "Settings",
                              activeIcon: Icon(
                                FluentIcons.library_16_filled,
                              ),
                              tooltip: "Library")
                        ]),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
