import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TipsAndTricks extends StatefulWidget {
  const TipsAndTricks({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TipsAndTricksState();
  }
}

class TipsAndTricksState extends State<TipsAndTricks> {
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

    const url = 'https://youtu.be/fH5iLx_jCUk';

    playerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Tips and Tricks'),
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
                            "What is Stem and why is it important?",
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
              ],
            ),
          ),
        );
      },
      player: YoutubePlayer(controller: playerController),
    );
  }
}
