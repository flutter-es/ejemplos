class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "César Vega",
      message: "Hola Flutter, eres asombroso!",
      time: "08:00",
      avatarUrl:
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=face-facial-hair-fine-looking-614810.jpg&fm=jpg"),
  new ChatModel(
      name: "Sully Rojas",
      message: "Hola César, ¿Vienes hoy?",
      time: "08:30",
      avatarUrl:
          "https://images.pexels.com/photos/751204/pexels-photo-751204.jpeg?cs=srgb&dl=cute-enjoyment-eyes-751204.jpg&fm=jpg"),
  new ChatModel(
      name: "Mario Sabato",
      message: "Hola César, ¿Vas el sábado a la fiesta?",
      time: "09:45",
      avatarUrl:
          "https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?cs=srgb&dl=boy-casual-cool-769772.jpg&fm=jpg"),
  new ChatModel(
      name: "Pedro Avila",
      message: "¿Con hambre? Lunch?",
      time: "12:20",
      avatarUrl:
          "https://images.pexels.com/photos/777171/pexels-photo-777171.jpeg?cs=srgb&dl=blur-blurred-background-close-up-777171.jpg&fm=jpg"),
  new ChatModel(
      name: "Antonio Ocampo",
      message: "Hola Cesar! Tiempos sin convesar!",
      time: "13:50",
      avatarUrl:
          "https://images.pexels.com/photos/249618/pexels-photo-249618.jpeg?cs=srgb&dl=adult-beard-close-up-249618.jpg&fm=jpg"),
  new ChatModel(
      name: "David Murcia",
      message: "Hey Cesar, Necesito tu ayuda con un programa!",
      time: "15:10",
      avatarUrl:
          "https://images.pexels.com/photos/542282/pexels-photo-542282.jpeg?cs=srgb&dl=angry-beard-blur-542282.jpg&fm=jpg"),
];