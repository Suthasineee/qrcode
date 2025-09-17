import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomePage extends StatefulWidget {
  HomePage();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _player = AudioPlayer();
  @override
  void initState() {
    play();
    super.initState();
  }

  Future<void> play() async {
    await _player.play(AssetSource("audio/sample.mp3"));
    _player.resume;
  }

  @override
  void dispose() {
    _player.stop();
    super.dispose();
  }

  setstate() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Image.asset('assets/image/image.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
