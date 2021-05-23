import 'package:flutter/material.dart';
import 'package:youtube_video/models/favorite_data.dart';
import 'package:youtube_video/widgets/favorite_video_displayer.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (favoriteVieoData.isEmpty) {
      return Center(
        child: Text('No favourite video added yet!!',style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.03),),
      );
    }
    else {
      return Scaffold(
      body:SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Theme.of(context).accentColor),
            // color: Theme.of(context).accentColor,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            width: double.infinity,
            child: Text('Your\'s favourite videos.',style: TextStyle(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height*0.035),textAlign: TextAlign.center,),
          ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return FavoriteVideoDispalyer(
                    favoriteVieoData[index].id,
                    index,
                    favoriteVieoData[index].title,
                    favoriteVieoData[index].videoUrl,
                    favoriteVieoData[index].videoid);
              },
              itemCount: favoriteVieoData.length,
            ),
          ],
        ),
      ),
    );
    } 
  }
}