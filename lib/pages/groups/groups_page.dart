import 'package:copa_mundo_app/data/api_provider.dart';
import 'package:copa_mundo_app/pages/groups/widgets/group_card.dart';
import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*   appBar: AppBar(
        title: const Text('Grupos'),
      ), */
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg-home.png',
            fit: BoxFit.cover,
          ),
          ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: apiProvider.groups.length,
              itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: GroupCard(apiProvider.groups[index]))),
        ],
      ),
    );
  }
}
