import 'package:auto_size_text/auto_size_text.dart';
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
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          match.home.name,
                          maxLines: 2,
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        width: 40,
                        child: Image.network(
                          apiProvider.getImageTeam(match.home),
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'X',
                        style: TextStyle(fontSize: 40),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        width: 40,
                        child: Image.network(
                          apiProvider.getImageTeam(match.visitor),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: AutoSizeText(
                          match.visitor.name,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 20),
                        ),
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
