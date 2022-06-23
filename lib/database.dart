import 'package:flutter/material.dart';

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;
  final sound;
  Song(
      {this.name,
        this.singer,
        this.image,
        this.duration,
        this.color,
        this.sound});
}

List<Song> mostPopular = [
  Song(
      name: "3 Min Breathing Ex.",
      image: "assets/1.jpg",
      singer: "Peter Morgan",
      duration: 300,
      color: Color(0xFF9967d6),
      sound:"FreeMindfulness3MinuteBreathing.mp3"),
  Song(
      name: "5 Min Breathing Ex.",
      image: "assets/2.jpg",
      singer: "Still Mind",
      duration: 252,
      color: Color(0xFF9967d6),
      sound:"LifeHappens5MinuteBreathing.mp3"),

  Song(
      name: "6 Min Breathing Ex.",
      image: "assets/3.jpg",
      singer: "Still Mind",
      duration: 532,
      color: Color(0xFF9967d6),
      sound:"StillMind6MinuteBreathAwareness.mp3"),
  Song(
      name: "10 Min Breathing Ex",
      image: "assets/4.jpg",
      singer: "Peter Morgan",
      duration: 264,
      color: Color(0xFF9967d6),
      sound:"FreeMindfulness10MinuteBreathing.mp3")
];
List<Song> mostSleep = [
  Song(
      name: "Weightless",
      image: "assets/5.jpg",
      singer: "Marconi Union",
      duration: 252,
      color: Color(0xFF9967d6),
      sound:"Marconi Union - Weightless (Official Video).m4a"),
  Song(
      name: "Mellomaniac",
      image: "assets/6.jpg",
      singer: "DJ Shah",
      duration: 300,
      color: Color(0xFF9967d6),
      sound:"DJ Shah - Mellomaniac (Chillout MIx).m4a"),

  Song(
      name: "Electra",
      image: "assets/7.jpg",
      singer: "Airstream",
      duration: 532,
      color: Color(0xFF9967d6),
      sound:"Airstream - Electra.m4a"),
  Song(
      name: "Watermark",
      image: "assets/8.jpg",
      singer: "Enya",
      duration: 264,
      color: Color(0xFF9967d6),
      sound:"Enya - Watermark (Official Video).m4a")
];
List<Song> mostRelax = [
  Song(
      name: "Just-Relax",
      image: "assets/9.jpg",
      singer: "EH",
      duration: 252,
      color: Color(0xFF9967d6),
      sound:"just-relax-11157.mp3"),
  Song(
      name: "Chill",
      image: "assets/10.jpg",
      singer: "EH",
      duration: 300,
      color: Color(0xFF9967d6),
      sound:"chill-abstract-intention-12099.mp3"),

  Song(
      name: "Relaxation",
      image: "assets/11.jpg",
      singer: "EH",
      duration: 532,
      color: Color(0xFF9967d6),
      sound:"mindfulness-relaxation-amp-meditation-music-22174.mp3"),
  Song(
      name: "Both Of Us",
      image: "assets/12.jpg",
      singer: "EH",
      duration: 264,
      color: Color(0xFF9967d6),
      sound:"both-of-us-14037.mp3")
];
List<Song> mostCheerUp = [
  Song(
      name: "Cheer Up",
      image: "assets/13.jpg",
      singer: "Keys of Moon",
      duration: 252,
      color: Color(0xFF9967d6),
      sound:"keys-of-moon-cheer-up.mp3"),
  Song(
      name: "Guitar Rhythm",
      image: "assets/14.jpg",
      singer: "CC",
      duration: 300,
      color: Color(0xFF9967d6),
      sound:"fm-freemusic-inspiring-optimistic-upbeat-energetic-guitar-rhythm.mp3"),
  Song(
      name: "FeelFree",
      image: "assets/15.jpg",
      singer: "FM",
      duration: 300,
      color: Color(0xFF9967d6),
      sound:"feel-free.mp3"),
  Song(
      name: "Earning Happiness",
      image: "assets/16.jpg",
      singer: "John_Bartmann",
      duration: 532,
      color: Color(0xFF9967d6),
      sound:"John_Bartmann_-_04_-_Earning_Happiness.mp3")
];

List<Song> newRelease = [
  Song(
      name: "Breathing Exercises",
      image: "assets/A.jpg",
      singer: "4 songs",
      duration: 252,
      color: Color(0xFF9967d6)),
  Song(
      name: "Sleep",
      image: "assets/B.jpg",
      singer: "4 songs",
      duration: 300,
      color: Color(0xFF9967d6)),
  Song(
      name: "Relax",
      image: "assets/C.jpg",
      singer: "4 songs",
      duration: 264,
      color: Color(0xFF9967d6)),
  Song(
      name: "Cheer Up",
      image: "assets/19810495-silhouette-of-happy-people-jumping-in-sunset-.webp",
      singer: "4 songs",
      duration: 532,
      color: Color(0xFF9967d6)),
];
