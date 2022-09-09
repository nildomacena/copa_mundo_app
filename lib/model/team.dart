import 'package:copa_mundo_app/model/player.dart';

class Team {
  String name;
  String flag;
  List<Player> players;

  Team({required this.name, required this.flag, required this.players});
}
