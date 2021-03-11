import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PetersonsHomePage extends StatefulWidget {
  PetersonsHomePage({Key key}) : super(key: key);

  @override
  _PetersonsHomePageState createState() => _PetersonsHomePageState();
}

class _PetersonsHomePageState extends State<PetersonsHomePage> {
  YoutubePlayerController _controller;

  void runYouTubePlayer() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=Rz3CtjMc7Hc"),
      flags: YoutubePlayerFlags(),
    );
  }

  @override
  void initState() {
    runYouTubePlayer();
    super.initState();
  }

  @override
  void dispose() {
    _controller.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _controller),
        builder: (context, player) {
          return Scaffold(
            appBar: NewGradientAppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop()),
              title: Text("PETERSON'S ALGORITHM"),
              gradient:
                  LinearGradient(colors: [Colors.blue, Colors.greenAccent]),
            ),
            body: player,
          );
        });
  }
}
