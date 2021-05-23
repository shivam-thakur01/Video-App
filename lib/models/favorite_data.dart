import 'package:flutter/foundation.dart';

class FavoritevideoData {
  final String id;
  final String videoUrl;
  final String videoid;
  final String title;
  bool isFavorite;

  FavoritevideoData(
      {@required this.id,
      @required this.videoUrl,
      @required this.videoid,
      @required this.title,
      this.isFavorite});
}

List<FavoritevideoData> favoriteVieoData = [];

void favoriteScreenlogic(
    String id, String videoUrl, String videoId, String title, bool isFavorite) {
  var valueToWork = FavoritevideoData(
      id: id, videoUrl: videoUrl, videoid: videoId, title: title);
  if (isFavorite == true) {
    favoriteVieoData.removeWhere((FavoritevideoData data) => data.videoid==videoId);
  } else if (isFavorite == false) {
    favoriteVieoData.add(valueToWork);
  }
}
