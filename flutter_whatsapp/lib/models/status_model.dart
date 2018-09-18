import 'package:flutter/material.dart';

class StatusModel {
  final String name;
  final String message;
  final String time;
  final NetworkImage netImg;

  const StatusModel({this.name, this.message, this.time, this.netImg});
}

const dummyData = <StatusModel>[
  const StatusModel(
      name: "Mi estado",
      message: "Hoy",
      time: "08:00 AM",
      netImg: NetworkImage("https://randomuser.me/api/portraits/lego/8.jpg")),   
  const StatusModel(
      name: "Sully Rojas",
      message: "Hoy",
      time: "08:30 AM",
      netImg: NetworkImage("https://randomuser.me/api/portraits/lego/3.jpg")),          
  const StatusModel(
      name: "Mario Sabato",
      message: "Hoy",
      time: "09:45 PM",
      netImg: NetworkImage("https://randomuser.me/api/portraits/lego/7.jpg")),          
  const StatusModel(
      name: "Pedro Avila",
      message: "Hoy",
      time: "12:20 AM",
      netImg: NetworkImage("https://randomuser.me/api/portraits/lego/9.jpg")),          
  const StatusModel(
      name: "Antonio Palmar",
      message: "Hoy",
      time: "13:50",
      netImg: NetworkImage("https://randomuser.me/api/portraits/lego/2.jpg")),          
  const StatusModel(
      name: "David Murcia",
      message: "Hoy",
      time: "15:10",
      netImg: NetworkImage("https://randomuser.me/api/portraits/lego/4.jpg")),          
];
