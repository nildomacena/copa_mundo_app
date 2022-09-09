import 'package:auto_size_text/auto_size_text.dart';
import 'package:copa_mundo_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'kOdBxKPaz5Y',
    flags: const YoutubePlayerFlags(
      loop: true,
      autoPlay: false,
      mute: true,
      hideControls: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget buttonHome({required String label, required String icon}) {
      return Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        borderOnForeground: true,
        // color: StyleColors.primaryColor,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 200,
          decoration: const BoxDecoration(),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Image.asset(
                      icon,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: AutoSizeText(
                  label,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 30, color: StyleColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFe2e5f0),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bg-home.png',
              fit: BoxFit.cover,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Expanded(
                    child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(children: [
                    Expanded(
                        child: buttonHome(
                            label: 'Visualizar Times',
                            icon: 'assets/icons/team.png')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: buttonHome(
                            label: 'Consultar Grupos',
                            icon: 'assets/icons/group.png')),
                  ]),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
