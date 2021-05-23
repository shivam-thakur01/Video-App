import 'package:flutter/material.dart';
import 'package:youtube_video/models/favorite_data.dart';
import 'package:youtube_video/models/poetry_data.dart';
import 'package:youtube_video/models/story_telling_data.dart';

import 'package:youtube_video/video_player.dart';

// ignore: must_be_immutable
class VideoDisplay extends StatefulWidget {
  final String id;
  final String url;
  final String videoId;
  final String title;
  final int index;
  final bool isFavorite;

  VideoDisplay(
    this.id,
    this.url,
    this.videoId,
    this.title,
    this.isFavorite,
    this.index,
  );

  @override
  _VideoDisplayState createState() => _VideoDisplayState();
}

class _VideoDisplayState extends State<VideoDisplay> {
  @override
  Widget build(BuildContext context) {
    bool forColor =
        favoriteVieoData.any((data) => data.videoid == widget.videoId);
    bool isFavoriteValue = widget.isFavorite;
    String convertedId =
        'https://img.youtube.com/vi/' + widget.videoId + "/0.jpg";
    return Container(
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
                      fontSize: 20, color: Theme.of(context).accentColor),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    // forColor?Icons.favorite:Icons.favorite_border,
                    color: forColor?Colors.deepOrange:Colors.amber,
                  ),
                  onPressed: () {
                    setState(() {
                      if (widget.id == 'SD') {
                        if (storyData[widget.index].isFavorite == false) {
                          storyData[widget.index].isFavorite = true;
                          isFavoriteValue = true;
                        } else if (storyData[widget.index].isFavorite == true) {
                          storyData[widget.index].isFavorite = false;
                          isFavoriteValue = false;
                        }
                      }
                      if (widget.id == 'PD') {
                        if (poetryData[widget.index].isFavorite == false) {
                          poetryData[widget.index].isFavorite = true;
                          isFavoriteValue = true;
                        } else if (poetryData[widget.index].isFavorite ==
                            true) {
                          poetryData[widget.index].isFavorite = false;
                          isFavoriteValue = false;
                        }
                      }
                    });
                    favoriteScreenlogic(widget.id, widget.url, widget.videoId,
                        widget.title, isFavoriteValue);
                  },
                ),
              ),
            ),
          )),
    );
  }
}
