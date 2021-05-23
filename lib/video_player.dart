import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  final String url;
  VideoPlayer({this.url});

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
 

  // String videoId = YoutubePlayer.convertUrlToId(
  //     // "https://www.youtube.com/watch?v=Zyeq9N50HZE&list=PLtQaKk91oBLdlxErIeARc1wuzL_BBE3F6"
  //     );
  YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
     String videoId = YoutubePlayer.convertUrlToId(
      widget.url
      );
  
    super.initState();
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: youtubePlayerController,
      ),
      builder: (context, player) {
        return Center(
          child: player,
        );
      },
    );
  }
}
