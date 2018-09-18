import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final NetworkImage netImg;

  const ChatModel({this.name, this.message, this.time, this.netImg});
}

const dummyDataChat = <ChatModel>[
  const ChatModel(
      name: "César Vega",
      message: "Hola Flutter, eres asombroso!",
      time: "08:00",
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/36.jpg")),
  const ChatModel(
      name: "Sully Rojas",
      message: "Hola César, ¿Vienes hoy?",
      time: "08:30",
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/women/3.jpg")),
  const ChatModel(
      name: "Mario Sabato",
      message: "Hola César, ¿Vas el sábado a la fiesta?",
      time: "09:45",
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/27.jpg")),
  const ChatModel(
      name: "Pedro Avila",
      message: "¿Con hambre? Lunch?",
      time: "12:20",
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/10.jpg")),
  const ChatModel(
      name: "Antonio Palmar",
      message: "Hola Cesar! Tiempos sin convesar!",
      time: "13:50",
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/16.jpg")),
  const ChatModel(
      name: "David Murcia",
      message: "Hey Cesar, Necesito tu ayuda con un programa!",
      time: "15:10",
      netImg: NetworkImage(
          "https://randomuser.me/api/portraits/men/15.jpg")),
];
