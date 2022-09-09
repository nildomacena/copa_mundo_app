import 'package:copa_mundo_app/data/api_provider.dart';
import 'package:copa_mundo_app/model/match.dart';
import 'package:copa_mundo_app/shared/util.dart';
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final Match match;
  const MatchCard(this.match, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
          color: Colors.white.withOpacity(.5),
          child: Container(
            height: 120,
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        match.home.name,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child:
                            Image.network(apiProvider.getImageTeam(match.home)),
                      ),
                      const Text(
                        'X',
                        style: TextStyle(fontSize: 40),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Image.network(
                            apiProvider.getImageTeam(match.visitor)),
                      ),
                      Text(
                        match.visitor.name,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Jogo pelo grupo ${match.group.letter}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  Util.formatDate(match.time),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          )),
    );
  }
}
