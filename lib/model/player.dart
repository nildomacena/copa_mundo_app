enum Position { defender, midfielder, atacker }

class Player {
  Position position;
  String name;

  Player({required this.name, required this.position});
}
