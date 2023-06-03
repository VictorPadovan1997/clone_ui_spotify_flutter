import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:spotify_ui_clone/screen/home_screen.dart';
import 'package:spotify_ui_clone/screen/search_screen.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int currentIndex = 0;
  Widget _widgetBody = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF383333),
              Colors.black54,
              Colors.black54,
            ],
          ),
        ),
        child: _widgetBody,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromRGBO(255, 255, 255, 1),
          onTap: _onTapItemNaLista,
          items: [
            BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? Icon(Icons.home)
                  : Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? Icon(
                      Icons.search,
                    )
                  : Icon(
                      Icons.search_outlined,
                    ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? Icon(
                      Icons.library_music,
                    )
                  : Icon(
                      Icons.library_music_outlined,
                    ),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.spotify,
              ),
              label: 'Premium',
            )
          ],
        ),
      ),
    );
  }

  void _onTapItemNaLista(int index) {
    setState(() {
      if (index == 0) {
        currentIndex = index;
        _widgetBody = HomeScreen();
      }
      if (index == 1) {
        currentIndex = index;
        _widgetBody = SearchScreen();
      }
      if (index == 2) {
        currentIndex = index;
        _widgetBody = Center(child: Text('Library'));
      }
      if (index == 3) {
        currentIndex = index;
        _widgetBody = Center(child: Text('Premium'));
      }
    });
  }
}
