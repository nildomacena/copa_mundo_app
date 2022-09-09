import 'package:copa_mundo_app/model/group.dart';
import 'package:copa_mundo_app/model/team.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final Group group;
  const GroupCard(this.group, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(.5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Grupo ${group.letter.toUpperCase()}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    childAspectRatio: 1.3),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: group.teams.length,
                itemBuilder: (BuildContext context, int index) {
                  Team team = group.teams[index];
                  return Column(children: [
                    SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://countryflagsapi.com/png/${team.flag}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      group.teams[index].name,
                      style: const TextStyle(fontSize: 22),
                    )
                  ]);
                }),
            /*   GridView.builder(
                gridDelegate: gridDelegate,
                itemBuilder: (context, index) {
                  return Container();
                }), */
            /*  ...group.teams
                .map((e) => Row(children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        width: 70,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            'https://countryflagsapi.com/png/${e.flag}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        e.name,
                        style: const TextStyle(fontSize: 22),
                      )
                    ]))
                .toList() */
          ],
        ),
      ),
    );
  }
}
