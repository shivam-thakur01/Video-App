import 'package:flutter/material.dart';
import 'package:youtube_video/Screen/favorite_screen.dart';
import 'package:youtube_video/main.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('Video App'),
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.featured_play_list),text: 'Video Category',
          ),
          Tab(
            icon: Icon(Icons.favorite),text: 'Favourites',
          )]),),
        body: TabBarView(children: [
          MyHomePage(),
          FavoriteScreen()
        ],),
    ),);
  }
}