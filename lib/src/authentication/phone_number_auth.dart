import 'package:flutter/material.dart';

import '../home_page/home_page.dart';

class PhoneNumberAuth extends StatelessWidget {
  const PhoneNumberAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text(
          'Phone Number',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Image(image: AssetImage('assets/Pictures/logo.png')),
              Image(image: AssetImage('assets/Pictures/appName.png')),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Phone number'),
                  ),
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF2E3972)),
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                      MediaQuery.of(context).size.width * 0.8,
                      MediaQuery.of(context).size.width * 0.12))),
              child: const Text(
                'Confirm',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
        ],
      ),
    );
  }
}
