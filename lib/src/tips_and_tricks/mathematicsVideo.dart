import 'package:flutter/material.dart';
import 'package:stem_wiz/src/tips_and_tricks/tipsConceptSelevtion.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../group_selection/group_selection.dart';

class MathematicsBasics extends StatefulWidget {
  const MathematicsBasics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MathematicsBasicsState();
  }
}

class MathematicsBasicsState extends State<MathematicsBasics> {
  late YoutubePlayerController playerController;

  @override
  void deactivate() {
    playerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/GtpplO7xdqM';

    playerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    int crossAxis = 2;
    if (widthOfScreen < 400.0) {
      crossAxis = 2;
    } else {
      crossAxis = 3;
    }
    return YoutubePlayerBuilder(
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Trigonometry'),
            backgroundColor: const Color(0xFF2e3972),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      color: Colors.green[300],
                    ),
                    height: 250,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            "Basics of trigonometry",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        player,
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ),
        );
      },
      player: YoutubePlayer(controller: playerController),
    );
  }
}
