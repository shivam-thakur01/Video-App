import 'package:flutter/material.dart';
import 'package:youtube_video/models/poetry_data.dart';
import 'package:youtube_video/widgets/video_displayer.dart';

class PoetryScreen extends StatelessWidget {
  const PoetryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poetry'),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return VideoDisplay(
        poetryData[index].id,
        poetryData[index].videoUrl,
        poetryData[index].videoid,
        poetryData[index].title,
        poetryData[index].isFavorite,
        index,
        );
      },
      itemCount: poetryData.length,
      ),
    );
  }
}