import 'dart:async';
import 'dart:ui';
import 'package:app/utilities/data.dart';
import 'package:app/widget/app_bar.dart';
import 'package:flutter/material.dart';

import '../controller/audio_controller.dart';

class MusicPlayer extends StatefulWidget {
  final AudioVM audioVM;
  final Function refsher;

  MusicPlayer(this.audioVM, this.refsher);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {

  void _refresh() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
            tag: 'image',
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.audioVM.currentSong.image), fit: BoxFit.cover)),
            )),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(
              iconData: Icons.arrow_back, context: context, canBack: true),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                bottom: 50,
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  spreadRadius: 16,
                  color: Colors.black.withOpacity(0.2),
                )
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4,
                    sigmaY: 4,
                  ),
                  child: Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1.5, color: Colors.white.withOpacity(0.2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.audioVM.currentSong.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            widget.audioVM.currentSong.singer,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 2),
                              trackShape: RectangularSliderTrackShape(),
                              trackHeight: 6,
                            ),
                            child: Slider(
                              value: widget.audioVM.currentSlider,
                              max: widget.audioVM.currentSong.duration.toDouble(),
                              min: 0,
                              inactiveColor: Colors.white70,
                              activeColor: Colors.red,
                              onChanged: (val) {
                                widget.audioVM.currentSlider = val;
                                widget.audioVM.seek();
                                widget.refsher();
                                _refresh();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Duration(seconds: widget.audioVM.currentSlider.toInt())
                                    .toString()
                                    .split('.')[0]
                                    .substring(2),
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                Duration(seconds: widget.audioVM.currentSong.duration.toInt())
                                    .toString()
                                    .split('.')[0]
                                    .substring(2),
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.audioVM.selectedIndex = (widget.audioVM.selectedIndex - 1 + widget.audioVM.mostPopular.length) % widget.audioVM.mostPopular.length;
                                widget.audioVM.currentSong = widget.audioVM.mostPopular[widget.audioVM.selectedIndex];
                                widget.audioVM.play();
                                widget.audioVM.currentSlider = 0;
                                widget.refsher();
                              },
                              child: Icon(
                                Icons.skip_previous_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                if (widget.audioVM.isPlaying == true) {
                                  widget.audioVM.isPlaying = false;
                                  widget.audioVM.pause();
                                } else
                                if (widget.audioVM.isPlaying == false) {
                                  widget.audioVM.isPlaying = true;
                                  widget.audioVM.resume();
                                  Timer.periodic(Duration(seconds: 1), (timer) {
                                    if (widget.audioVM.currentSlider < widget.audioVM.currentSong.duration) {
                                      widget.audioVM.currentSlider++;
                                    } else {
                                      widget.audioVM.stop();
                                    }
                                    widget.refsher();
                                    _refresh();
                                  });
                                } else
                                if (widget.audioVM.isPlaying == null) {
                                  widget.audioVM.isPlaying = true;
                                  widget.audioVM.play();
                                  Timer.periodic(Duration(seconds: 1), (timer) {
                                    if (widget.audioVM.currentSlider < widget.audioVM.currentSong.duration) {
                                      widget.audioVM.currentSlider++;
                                    } else {
                                      widget.audioVM.stop();
                                    }
                                    widget.refsher();
                                    _refresh();
                                  });
                                }
                              },
                              child: widget.audioVM.isPlaying == true
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
                            GestureDetector(
                              onTap: () {
                                widget.audioVM.selectedIndex = (widget.audioVM.selectedIndex + 1) % widget.audioVM.mostPopular.length;
                                widget.audioVM.currentSong = widget.audioVM.mostPopular[widget.audioVM.selectedIndex];
                                widget.audioVM.play();
                                widget.audioVM.currentSlider = 0;
                                widget.refsher();
                                _refresh();
                              },
                              child: Icon(
                                Icons.skip_next_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
