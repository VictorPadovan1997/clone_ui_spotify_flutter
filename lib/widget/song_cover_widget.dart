import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/model/song.dart';

class SongCoverWidget extends StatelessWidget {
  final double? widget;
  final double? height;
  final Song? song;
  const SongCoverWidget({
    Key? key,
    this.widget,
    this.height,
    this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height,
            width: widget,
            child: Image.network(
              song!.coverImage!,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            width: 150,
            height: 35,
            child: Text(
              song!.caption!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.white.withOpacity(1.0),
                fontFamily: 'SpotifyFont',
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
