import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../utilities/data.dart';

class AudioVM {
  List<Song> mostPopular = [
    Song(
      url: 'songs/making_my_way.mp3',
      name: "Making my way",
      image: 'assets/images/Song1.png',
      singer: "Son Tung MTP",
      duration: 223,
      color: Colors.grey,
    ),
    Song(
      url: 'songs/lisa.mp3',
      name: "Lalisa",
      singer: "Lisa",
      image: 'assets/images/Song2.png',
      duration: 252,
      color: Colors.orange,
    ),
    Song(
        url: 'songs/gone_rose.mp3',
        name: "Gone",
        singer: 'Rosé',
        image: 'assets/images/Song3.3.png',
        duration: 264,
        color: Colors.yellow),
    Song(
      url: 'songs/thank_u_next.mp3',
      name: 'Thank u, next',
      singer: 'Ariana Grandae',
      image: 'assets/images/Song4.png',
      duration: 230,
      color: Colors.pink,
    ),
  ];

  var currentSong = Song(
    url: 'songs/making_my_way.mp3',
    name: "Making my way",
    image: 'assets/images/Song1.png',
    singer: "Son Tung MTP",
    duration: 223,
    color: Colors.grey,
  );

  bool? isPlaying = null;
  double currentSlider = 0;
  AudioPlayer? cplayer;

  String urlSong = 'songs/making_my_way.mp3';
  int selectedIndex = 0;

  void setUrlSong(String urlSong) {
    this.urlSong = urlSong;
  }

  Future<void> play() async {
    cplayer?.dispose();
    final player = cplayer = AudioPlayer();
    player.play(AssetSource(currentSong.url));
  }

  Future<void> pause() async {
    await cplayer?.pause();
  }

  Future<void> resume() async {
    await cplayer?.resume();
  }

  Future<void> stop() async {
    await cplayer?.stop();
  }

  Future<void> seek() async {
    cplayer?.seek(Duration(seconds: currentSlider.toInt()));
  }
}
