
import 'dart:async';

import 'package:app/controller/audio_controller.dart';
import 'package:app/widget/app_bar.dart';
import 'package:flutter/material.dart';

import 'music_player.dart';

class ListPage extends StatefulWidget {

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  AudioVM audioVM = AudioVM();

  void _refresh() {
    setState(() {

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioVM.cplayer?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: appBar(iconData: Icons.search, canBack: false, context: context),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Most\nPopular',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Text(
                    '500 playlist',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
                Container(
                  height: 210,
                  child: ListView.builder(
                    itemCount: audioVM.mostPopular.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          audioVM.selectedIndex = index;
                          audioVM.currentSong = audioVM.mostPopular[audioVM.selectedIndex];
                          if (audioVM.isPlaying == true) audioVM.play();
                          _refresh();
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: audioVM.mostPopular[index].color,
                                    blurRadius: 1,
                                    spreadRadius: 0.3)
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      audioVM.mostPopular[index].image,
                                  ),
                                  fit: BoxFit.cover,
                              )),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  audioVM.mostPopular[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  audioVM.mostPopular[index].singer,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'New Release',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        '1024 Songs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                        itemCount: audioVM.mostPopular.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              audioVM.selectedIndex = index;
                              audioVM.currentSong = audioVM.mostPopular[audioVM.selectedIndex];
                              if (audioVM.isPlaying == true) audioVM.play();
                              _refresh();
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(audioVM.mostPopular[index].image, width: 100, height: 100, fit: BoxFit.cover,),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    audioVM.mostPopular[index].name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    audioVM.mostPopular[index].singer,
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Your Playlist',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        '1024 Songs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                        itemCount: audioVM.mostPopular.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              audioVM.selectedIndex = index;
                              audioVM.currentSong = audioVM.mostPopular[audioVM.selectedIndex];
                              if (audioVM.isPlaying == true) audioVM.play();
                              _refresh();
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(audioVM.mostPopular[index].image, width: 100, height: 100, fit: BoxFit.cover,),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    audioVM.mostPopular[index].name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    audioVM.mostPopular[index].singer,
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Artist',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          '1024 Songs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        height: 120,
                        child: ListView.builder(
                          itemCount: audioVM.mostPopular.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                _refresh();
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(audioVM.mostPopular[index].image,),
                                      radius: 40,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      audioVM.mostPopular[index].name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      audioVM.mostPopular[index].singer,
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, _, __) => MusicPlayer(
                      audioVM,
                      _refresh,
                    ),
                  ),
                );
              },
              child: Container(
                height: 130,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Hero(
                              tag: 'image',
                              child: CircleAvatar(
                                backgroundImage: AssetImage(audioVM.currentSong.image),
                                radius: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  audioVM.currentSong.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  audioVM.currentSong.singer,
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (audioVM.isPlaying == true) {
                                  audioVM.isPlaying = false;
                                  audioVM.pause();
                                } else
                                if (audioVM.isPlaying == false) {
                                  audioVM.isPlaying = true;
                                  audioVM.resume();
                                  Timer.periodic(Duration(seconds: 1), (timer) {
                                    if (audioVM.currentSlider < audioVM.currentSong.duration) {
                                      audioVM.currentSlider++;
                                    } else {
                                      audioVM.stop();
                                    }
                                    _refresh();
                                  });
                                } else
                                if (audioVM.isPlaying == null) {
                                  audioVM.isPlaying = true;
                                  audioVM.play();
                                  Timer.periodic(Duration(seconds: 1), (timer) {
                                    if (audioVM.currentSlider < audioVM.currentSong.duration) {
                                      audioVM.currentSlider++;
                                    } else {
                                      audioVM.stop();
                                    }
                                    _refresh();
                                  });
                                }
                                _refresh();
                              },
                              child: audioVM.isPlaying == true
                                  ? Icon(
                                Icons.pause,
                                color: Colors.white,
                                size: 30,
                              )
                                  : Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                audioVM.selectedIndex = (audioVM.selectedIndex + 1) % audioVM.mostPopular.length;
                                audioVM.currentSong = audioVM.mostPopular[audioVM.selectedIndex];
                                audioVM.play();
                                audioVM.currentSlider = 0;
                                _refresh();
                              },
                              child: Icon(
                                Icons.skip_next_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          Duration(seconds: audioVM.currentSlider.toInt())
                              .toString()
                              .split('.')[0]
                              .substring(2),
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 120,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 4,
                              ),
                              trackShape: RectangularSliderTrackShape(),
                              trackHeight: 4,
                            ),
                            child: Slider(
                              value: audioVM.currentSlider,
                              max: audioVM.currentSong.duration.toDouble(),
                              min: 0,
                              inactiveColor: Colors.grey[500],
                              activeColor: Colors.white,
                              onChanged: (val) {
                                audioVM.currentSlider = val;
                                audioVM.seek();
                                _refresh();
                              },
                            ),
                          ),
                        ),
                        Text(
                          Duration(seconds: audioVM.currentSong.duration)
                              .toString()
                              .split('.')[0]
                              .substring(2),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


