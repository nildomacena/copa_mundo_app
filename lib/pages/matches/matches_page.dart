import 'package:copa_mundo_app/data/api_provider.dart';
import 'package:copa_mundo_app/model/match.dart';
import 'package:copa_mundo_app/pages/matches/widget/match_card.dart';
import 'package:flutter/material.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Match> matches = apiProvider.matches;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.5),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        shrinkWrap: true,
        itemCount: matches.length,
        itemBuilder: (context, index) => MatchCard(matches[index]),
      ),
    );
  }
}
