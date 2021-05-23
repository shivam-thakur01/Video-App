import 'package:flutter/material.dart';

import '../video_player.dart';

class FavoriteVideoDispalyer extends StatefulWidget {
  final String id;
  final String url;
  final String videoId;
  final String title;
  final int index;

  FavoriteVideoDispalyer(
      this.id, this.index, this.title, this.url, this.videoId);

  @override
  _FavoriteVideoDispalyerState createState() => _FavoriteVideoDispalyerState();
}

class _FavoriteVideoDispalyerState extends State<FavoriteVideoDispalyer> {
  @override
  Widget build(BuildContext context) {
    String convertedId =
        'https://img.youtube.com/vi/' + widget.videoId + "/0.jpg";
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VideoPlayer(
                        url: widget.url,
              ))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GridTile(
                  child: Image(
                    image: NetworkImage(convertedId),
                    fit: BoxFit.fitWidth,
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black54,
                    title: Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 20, color: Colors.deepOrange),textAlign: TextAlign.center,
                    ),
                  )
                )
              ),
          ),
        ),
      ],
    );
  }
}
