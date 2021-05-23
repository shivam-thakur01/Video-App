import 'package:flutter/material.dart';
import 'package:youtube_video/models/story_telling_data.dart';
import 'package:youtube_video/widgets/video_displayer.dart';

class StoryTelling extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story Telling'),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return VideoDisplay(
        storyData[index].id,
        storyData[index].videoUrl,
        storyData[index].videoid,
        storyData[index].title,
        storyData[index].isFavorite,
        index,
        );
      },
      itemCount: storyData.length,
      ),
    );
  }
}
