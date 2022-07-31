import 'package:flutter/material.dart';
import 'package:stem_wiz/src/tips_and_tricks/tipsConceptSelevtion.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../group_selection/group_selection.dart';

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TipsConceptSelection()));
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2E3972)),
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                            MediaQuery.of(context).size.width * 0.2,
                            MediaQuery.of(context).size.width * 0.12))),
                    child: const Text(
                      'Watch Teaching videos',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                // Padding(
                //   padding: EdgeInsets.only(
                //       top: MediaQuery.of(context).size.height * 0.05),
                //   child: GridView.count(
                //     childAspectRatio: 1.0,
                //     padding: const EdgeInsets.only(left: 16, right: 16),
                //     crossAxisCount: crossAxis,
                //     crossAxisSpacing: 18,
                //     mainAxisSpacing: 18,
                //     children: <Widget>[
                //       GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const GroupSelection()),
                //           );
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/mathematics.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Mathematics",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           // Navigator.push(
                //           //   context,
                //           //   MaterialPageRoute(builder: (context) => const ___),
                //           // );
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/physics.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Physics",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           // Navigator.push(
                //           //   context,
                //           //   MaterialPageRoute(builder: (context) => const ___),
                //           // );
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/chemistry.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Chemistry",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           // Navigator.push(
                //           //   context,
                //           //   MaterialPageRoute(builder: (context) => const ___),
                //           // );
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/IT.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "IT",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           // Navigator.push(
                //           //   context,
                //           //   MaterialPageRoute(builder: (context) => const ___),
                //           // );
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/biology.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Biology",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           //print("Container clicked");
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/engineering.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Engineering",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           //print("Container clicked");
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/psychology.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Psychology",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           //print("Container clicked");
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.indigo,
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Image.asset(
                //                 "assets/Pictures/astronomy.png",
                //                 width: 42,
                //               ),
                //               const SizedBox(
                //                 height: 14,
                //               ),
                //               Text(
                //                 "Astronomy",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               Text(
                //                 "6 Items",
                //                 style: GoogleFonts.openSans(
                //                     textStyle: const TextStyle(
                //                         color: Colors.white70,
                //                         fontSize: 11,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //               const SizedBox(
                //                 height: 8,
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Padding(
                //           padding: EdgeInsets.only(
                //               bottom: MediaQuery.of(context).size.height * 0.1))
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        );
      },
      player: YoutubePlayer(controller: playerController),
    );
  }
}
