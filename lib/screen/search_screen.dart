import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF414345),
            Color(0xFF000000),
          ],
          begin: Alignment.topLeft,
          end: FractionalOffset(0.2, 0.7),
        ),
      ),
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                ),
                componenteDeSearchTexto(),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                componenteDeSearchBarraDePesquisa(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  componenteDeSearchTexto() {
    return Container(
      child: Text(
        'Pesquisar',
        style: TextStyle(
          color: Colors.white.withOpacity(1.0),
          fontFamily: 'SpotifyFont',
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    );
  }

  componenteDeSearchBarraDePesquisa(context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(
                'Pesquisar por artistas, etc..',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
