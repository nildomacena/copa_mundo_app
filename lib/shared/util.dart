import 'package:copa_mundo_app/data/api_provider.dart';
import 'package:copa_mundo_app/model/group.dart';
import 'package:copa_mundo_app/model/team.dart';

class Util {
  static String formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}, ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  static Group? getBroupByTeam(Team team) {
    Group? group;
    for (Group g in apiProvider.groups) {
      for (Team t in g.teams) {
        if (t.name == team.name) {
          group = g;
        }
      }
    }
    return group;
  }
}
