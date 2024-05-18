import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/widgets/ICard2.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'page3';
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/dumbell.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'User Profile',
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const CircleAvatar(
                        radius: 100.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('images/GetStartedOverlay.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Name: Jane Smith",
                        style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email: janesmith93@gmail.com",
                        style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Current Fitness Plan:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ICard2(
                          item: kCardItem(),
                        ),
                      ),
                    ]),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  // child: Image.asset("images/fitness.png"),
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
