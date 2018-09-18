import 'package:flutter/material.dart';

class CallsModel {
  final String name;
  final String message;
  final String time;
  final IconData icono;
  final NetworkImage netImg;

  const CallsModel({this.name, this.message, this.time, this.icono, this.netImg});
}

const dummyDataCall = <CallsModel>[
  const CallsModel(
      name: "Sully Rojas",
      message: "(3) 10 de septiembre",
      time: "08:04 AM",
      icono: Icons.video_call,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/women/3.jpg")),
  const CallsModel(
      name: "Sully Rojas",
      message: "7 de septiembre",
      time: "10:30 AM",
      icono: Icons.video_call,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/women/3.jpg")),
  const CallsModel(
      name: "Sully Rojas",
      message: "27 de agosto",
      time: "10:19 AM",
      icono: Icons.phone,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/women/3.jpg")),
  const CallsModel(
      name: "Mario Sabato",
      message: "20 de agosto",
      time: "09:45 PM",
      icono: Icons.phone,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/27.jpg")),
  const CallsModel(
      name: "Pedro Avila",
      message: "15 de agosto",
      time: "12:20 PM",
      icono: Icons.phone,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/10.jpg")),
  const CallsModel(
      name: "Antonio Palmar",
      message: "11 de agosto",
      time: "13:50 PM",
      icono: Icons.phone,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/16.jpg")),
  const CallsModel(
      name: "David Murcia",
      message: "(2) 5 de agosto",
      time: "11:05 AM",
      icono: Icons.phone,
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/15.jpg")),
];
