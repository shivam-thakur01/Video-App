import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VideoData {
  final String id;
  final String videoUrl;
  final String videoid;
  final String title;
  bool isFavorite;

  VideoData({
    @required this.id,
    @required this.videoUrl,
    @required this.videoid,
    @required this.title,
    this.isFavorite = false,
  });
}
