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
      netImg: NetworkImage("https://images.pexels.com/photos/1418906/pexels-photo-1418906.jpeg?cs=srgb&dl=background-colourful-fashion-1418906.jpg&fm=jpg")),   
  const StatusModel(
      name: "Sully Rojas",
      message: "Hoy",
      time: "08:30 AM",
      netImg: NetworkImage("https://images.pexels.com/photos/1395357/pexels-photo-1395357.jpeg?cs=srgb&dl=colourful-flowers-garden-1395357.jpg&fm=jpg")),          
  const StatusModel(
      name: "Mario Sabato",
      message: "Hoy",
      time: "09:45 PM",
      netImg: NetworkImage("https://images.pexels.com/photos/1365530/pexels-photo-1365530.jpeg?cs=srgb&dl=blue-children-fun-1365530.jpg&fm=jpg")),          
  const StatusModel(
      name: "Pedro Avila",
      message: "Hoy",
      time: "12:20 AM",
      netImg: NetworkImage("https://images.pexels.com/photos/1406271/pexels-photo-1406271.jpeg?cs=srgb&dl=coffee-phone-rest-1406271.jpg&fm=jpg")),          
  const StatusModel(
      name: "Antonio Ocampo",
      message: "Hoy",
      time: "13:50",
      netImg: NetworkImage("https://images.pexels.com/photos/1406092/pexels-photo-1406092.jpeg?cs=srgb&dl=animals-cute-dog-1406092.jpg&fm=jpg")),          
  const StatusModel(
      name: "David Murcia",
      message: "Hoy",
      time: "15:10",
      netImg: NetworkImage("https://images.pexels.com/photos/1395367/pexels-photo-1395367.jpeg?cs=srgb&dl=animal-bird-eat-1395367.jpg&fm=jpg")),          
];
