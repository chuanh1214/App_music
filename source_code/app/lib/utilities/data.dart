import 'package:flutter/material.dart';

class Song {
  final String url;
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;

  Song({
    required this.url,
    required this.name,
    required this.singer,
    required this.image,
    required this.duration,
    required this.color,
  });
}