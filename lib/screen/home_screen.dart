import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/data/lista_song.dart';
import 'package:spotify_ui_clone/model/song.dart';
import 'package:spotify_ui_clone/widget/song_cover_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconeNoTopoConfiguracoes(),
              layoutDaListagem(
                texto: 'Recem Tocadas',
                dadosData: recents,
              ),
              layoutDaListagem(
                texto: 'Criado por Victor',
                dadosData: madefor,
              ),
              layoutDaListagem(
                texto: 'Unico por Voce',
                dadosData: unique,
              ),
              layoutDaListagem(
                texto: 'Melhores Artistas',
                dadosData: bestof,
              ),
              layoutDaListagem(
                texto: 'Recomendadas',
                dadosData: recommentation,
              ),
              layoutDaListagem(
                texto: 'Charts',
                dadosData: charts,
              ),
              layoutDaListagem(
                texto: 'Para vc ouvir',
                dadosData: foryoulistening,
              ),
            ],
          ),
        )
      ],
    );
  }

  iconeNoTopoConfiguracoes() {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(top: 30, right: 30),
      child: Icon(Icons.settings_outlined),
    );
  }

  layoutDaListagem({String? texto, List<Song>? dadosData}) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texto!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontFamily: 'SpotifyFont',
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: dadosData!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext contex, int index) {
                return SongCoverWidget(
                  height: 150,
                  widget: 130,
                  song: dadosData[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
