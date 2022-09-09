import 'package:copa_mundo_app/model/group.dart';
import 'package:copa_mundo_app/model/match.dart';
import 'package:copa_mundo_app/model/team.dart';

class ApiProvider {
  List<Team> teams = [
    Team(name: 'Catar', flag: 'qa', players: []),
    Team(name: 'Equador', flag: 'ec', players: []),
    Team(name: 'Senegal', flag: 'sn', players: []),
    Team(name: 'Holanda', flag: 'nl', players: []),
    Team(name: 'Inglaterra', flag: 'gb-eng', players: []),
    Team(name: 'Irã', flag: 'IR', players: []),
    Team(name: 'Estados Unidos', flag: 'us', players: []),
    Team(name: 'País de Gales', flag: 'gb-wls', players: []),
    Team(name: 'Argentina', flag: 'ar', players: []),
    Team(name: 'Arábia Saudita', flag: 'sa', players: []),
    Team(name: 'México', flag: 'mx', players: []),
    Team(name: 'Polônia', flag: 'pl', players: []),
    Team(name: 'França', flag: 'fr', players: []),
    Team(name: 'Austrália', flag: 'au', players: []),
    Team(name: 'Dinamarca', flag: 'dk', players: []),
    Team(name: 'Tunísia', flag: 'tn', players: []),
    Team(name: 'Espanha', flag: 'es', players: []),
    Team(name: 'Costa Rica', flag: 'cr', players: []),
    Team(name: 'Alemanha', flag: 'de', players: []),
    Team(name: 'Japão', flag: 'jp', players: []),
    Team(name: 'Bélgica', flag: 'be', players: []),
    Team(name: 'Canadá', flag: 'ca', players: []),
    Team(name: 'Marrocos', flag: 'MA', players: []),
    Team(name: 'Croácia', flag: 'hr', players: []),
    Team(name: 'Brasil', flag: 'br', players: []),
    Team(name: 'Sérvia', flag: 'rs', players: []),
    Team(name: 'Suíça', flag: 'ch', players: []),
    Team(name: 'Camarões', flag: 'cm', players: []),
    Team(name: 'Portugal', flag: 'pt', players: []),
    Team(name: 'Gana', flag: 'gh', players: []),
    Team(name: 'Uruguai', flag: 'uy', players: []),
    Team(name: 'Coreia do Sul', flag: 'kr', players: []),
  ];

  List<Group> get groups => [
        Group(letter: 'A', teams: teams.sublist(0, 4)),
        Group(letter: 'B', teams: teams.sublist(4, 8)),
        Group(letter: 'C', teams: teams.sublist(8, 12)),
        Group(letter: 'D', teams: teams.sublist(12, 16)),
        Group(letter: 'E', teams: teams.sublist(16, 20)),
        Group(letter: 'F', teams: teams.sublist(20, 24)),
        Group(letter: 'G', teams: teams.sublist(24, 28)),
        Group(letter: 'H', teams: teams.sublist(28)),
      ];
  List<Match> get matches => [
        Match(
            group: groups[0],
            time: DateTime.now(),
            home: teams[0],
            visitor: teams[1]),
        Match(
            group: groups[1],
            time: DateTime.now(),
            home: teams[2],
            visitor: teams[3]),
        Match(
            group: groups[2],
            time: DateTime.now(),
            home: teams[4],
            visitor: teams[5]),
        Match(
            group: groups[2],
            time: DateTime.now(),
            home: teams[10],
            visitor: teams[22]),
        Match(
            group: groups[7],
            time: DateTime.now(),
            home: teams[12],
            visitor: teams[21]),
        Match(
            group: groups[5],
            time: DateTime.now(),
            home: teams[5],
            visitor: teams[7]),
      ];
  ApiProvider() {
    /*  groups = [
      Group(letter: 'A', teams: teams.sublist(0, 4)),
      Group(letter: 'B', teams: teams.sublist(3, 8)),
      Group(letter: 'C', teams: teams.sublist(7, 12)),
      Group(letter: 'D', teams: teams.sublist(11, 16)),
      Group(letter: 'E', teams: teams.sublist(15, 20)),
      Group(letter: 'F', teams: teams.sublist(19, 24)),
      Group(letter: 'G', teams: teams.sublist(23, 28)),
      Group(letter: 'H', teams: teams.sublist(27)),
    ]; */
  }

  String getImageTeam(Team team) =>
      'https://countryflagsapi.com/png/${team.flag}';
}

ApiProvider apiProvider = ApiProvider();
