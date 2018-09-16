import 'package:flutter/material.dart';

class CallsModel {
  final String name;
  final String message;
  final String time;
  final IconData icono;
  final String avatarUrl;

  CallsModel({this.name, this.message, this.time, this.avatarUrl, this.icono});
}

List<CallsModel> dummyData = [
  new CallsModel(
      name: "Sully Rojas",
      message: "(3) 10 de septiembre",
      time: "08:04 AM",
      icono: Icons.video_call,
      avatarUrl:
          "https://images.pexels.com/photos/751204/pexels-photo-751204.jpeg?cs=srgb&dl=cute-enjoyment-eyes-751204.jpg&fm=jpg"),
  new CallsModel(
      name: "Sully Rojas",
      message: "7 de septiembre",
      time: "10:30 AM",
      icono: Icons.video_call,
      avatarUrl:
          "https://images.pexels.com/photos/751204/pexels-photo-751204.jpeg?cs=srgb&dl=cute-enjoyment-eyes-751204.jpg&fm=jpg"),
  new CallsModel(
      name: "Sully Rojas",
      message: "27 de agosto",
      time: "10:19 AM",
      icono: Icons.phone,
      avatarUrl:
          "https://images.pexels.com/photos/751204/pexels-photo-751204.jpeg?cs=srgb&dl=cute-enjoyment-eyes-751204.jpg&fm=jpg"),
  new CallsModel(
      name: "Mario Sabato",
      message: "20 de agosto",
      time: "09:45 PM",
      icono: Icons.phone,
      avatarUrl:
          "https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?cs=srgb&dl=boy-casual-cool-769772.jpg&fm=jpg"),
  new CallsModel(
      name: "Pedro Avila",
      message: "15 de agosto",
      time: "12:20 PM",
      icono: Icons.phone,
      avatarUrl:
          "https://images.pexels.com/photos/777171/pexels-photo-777171.jpeg?cs=srgb&dl=blur-blurred-background-close-up-777171.jpg&fm=jpg"),
  new CallsModel(
      name: "Antonio Ocampo",
      message: "11 de agosto",
      time: "13:50 PM",
      icono: Icons.phone,
      avatarUrl:
          "https://images.pexels.com/photos/249618/pexels-photo-249618.jpeg?cs=srgb&dl=adult-beard-close-up-249618.jpg&fm=jpg"),
  new CallsModel(
      name: "David Murcia",
      message: "(2) 5 de agosto",
      time: "11:05 AM",
      icono: Icons.phone,
      avatarUrl:
          "https://images.pexels.com/photos/542282/pexels-photo-542282.jpeg?cs=srgb&dl=angry-beard-blur-542282.jpg&fm=jpg"),
];
