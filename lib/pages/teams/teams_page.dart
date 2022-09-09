import 'package:copa_mundo_app/data/api_provider.dart';
import 'package:copa_mundo_app/model/team.dart';
import 'package:copa_mundo_app/pages/teams/widgets/team_card.dart';
import 'package:flutter/material.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Team> teams = apiProvider.teams;
    teams.sort(
      (a, b) => a.name.compareTo(b.name),
    );
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.5),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: teams.length,
          itemBuilder: (context, index) => TeamCard(teams[index])),
    );
  }
}
