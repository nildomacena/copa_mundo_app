import 'package:copa_mundo_app/pages/groups/groups_page.dart';
import 'package:copa_mundo_app/pages/matches/matches_page.dart';
import 'package:copa_mundo_app/pages/teams/teams_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> tabs = [
    const GroupsPage(),
    const MatchesPage(),
    const TeamsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bg-home.png',
              fit: BoxFit.cover,
            ),
            tabs[index],
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) => setState(() {
            print('index $i');
            index = i;
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: "Grupos",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Calendário de Jogos"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.flag), label: "Seleções"),
          ],
        ),
      ),
    );
  }
}
