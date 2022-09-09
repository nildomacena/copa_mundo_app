import 'package:copa_mundo_app/model/group.dart';
import 'package:copa_mundo_app/model/team.dart';

class Match {
  DateTime time;
  Group group;
  Team home;
  Team visitor;
  Match(
      {required this.group,
      required this.time,
      required this.home,
      required this.visitor});
}
