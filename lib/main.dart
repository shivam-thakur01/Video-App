import 'package:flutter/material.dart';
import 'package:youtube_video/Screen/poetry_screen.dart';
import 'package:youtube_video/Screen/story_telling_screen.dart';
import 'package:youtube_video/Screen/tab_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name',
      home: TabBarScreen(),
      theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.amberAccent,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensed'))),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
          Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/background_image.jpg',),fit: BoxFit.cover),
          ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Container(
                  alignment: Alignment.center,
                  child:Text('Hi!! What do you want to watch.',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*0.032,fontWeight: FontWeight.bold),)
                ),
                Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.15,
                                child: Image.asset('assets/images/poetry.jfif'),
                              ),
                              Text('Poetry',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold),)
                            ],
                          )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PoetryScreen()),
                      );
                    },
                  ),
                  InkWell(
                    child: Container(
                      child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.15,
                                child: Image.asset(
                                    'assets/images/storytelling.jfif'),
                              ),
                              Text('Story Telling',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold))
                            ],
                          )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StoryTelling()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.15,
                                child: Image.asset('assets/images/playlist.png'),
                              ),
                              Text('Playlist',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold))
                            ],
                          )),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.15,
                                child: Image.asset(
                                    'assets/images/liked.jfif'),
                              ),
                              Text('Most Liked',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold))
                            ],
                          )),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.15,
                                child: Image.asset('assets/images/playlist.png'),
                              ),
                              Text('Playlist',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold))
                            ],
                          )),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.15,
                                child: Image.asset(
                                    'assets/images/liked.jfif'),
                              ),
                              Text('Most Liked',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,fontWeight: FontWeight.bold))
                            ],
                          )),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
              ],
             ),
          )
        ],)
    );
  }
}
