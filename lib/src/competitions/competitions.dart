import 'package:flutter/material.dart';

class Items {
  String image;
  String title;
  String description;

  Items(this.image, this.title, this.description);
}

class Competitions extends StatefulWidget {
  const Competitions({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CompetitionsState();
  }
}

class CompetitionsState extends State<Competitions> {
  var newsItems = [
    Items(
        'https://www.societyforscience.org/wp-content/uploads/2019/10/ExhibitHall.jpg',
        'The Eskom Expo Science fair.',
        'The Eskom expo has been an event for many years and it hosts a great deal of science projects that aim at impowering young hopefulls in the science field.'),
    Items(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHzRpaJsF7ms9NE2Uq64YfpQVkkg4E_XUadw&usqp=CAU',
        'The BMOC Maths olympiad',
        'The BMOC Maths olympiad is an even that is hosted anually and it is for participants who have a strong interest and passion in maths.'),
    Items(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaGMhpErj7hAXtePqNPvRaqMmCHnKphz3QOA&usqp=CAU',
        'Young Scientist challemge',
        'These are a set of challenges brang forth to facilitate that learners improve their science skills.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Competitions'),
        backgroundColor: const Color(0xFF2e3972),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView.separated(
            separatorBuilder: (context, _) => const SizedBox(
              width: 12,
            ),
            itemCount: newsItems.length,
            itemBuilder: buildCard,
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, int i) {
    return Container(
      width: 200,
      height: 300,
      color: Colors.white,
      child: Column(
        children: [
          Image.network(newsItems[i].image),
          Text(
            newsItems[i].title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(newsItems[i].description),
          ),
        ],
      ),
    );
  }
}
