import 'package:copa_mundo_app/core/theme/text_style.dart';
import 'package:copa_mundo_app/data/api_provider.dart';
import 'package:copa_mundo_app/model/team.dart';
import 'package:copa_mundo_app/shared/util.dart';
import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final Team team;
  const TeamCard(this.team, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
          color: Colors.white.withOpacity(.5),
          child: SizedBox(
            height: 110,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: double.infinity,
                      child: Image.network(
                        apiProvider.getImageTeam(team),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            team.name,
                            style: TextStyle(
                                fontFamily: StyleText.fontBold, fontSize: 22),
                          ),
                          Text(
                            'Próximo jogo: ${Util.formatDate(DateTime.now())}',
                            style: TextStyle(
                                fontFamily: StyleText.fontLight, fontSize: 18),
                          ),
                          Text(
                            'Grupo: ${Util.getBroupByTeam(team)?.letter.toUpperCase()}',
                            style: TextStyle(
                                fontFamily: StyleText.fontLight, fontSize: 18),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
