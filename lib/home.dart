// ignore_for_file: library_private_types_in_public_api

import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/screens/AllPolicies.dart';
import 'package:locl/screens/Dashboard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool showSpinner = false;
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    callme();

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  callme() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSpinner
        ? const Center(
            child: CircularProgressIndicator(
              color: Colors.blueGrey,
            ),
          )
        : Scaffold(
            appBar: AppBar(
              // ignore: prefer_const_constructors
              title: Text(
                'P2Pump',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              leading: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: controller.value * 500,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              backgroundColor: Colors.blueGrey[900],
              actions: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.02),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/ai.png',
                        scale: 20,
                      ),
                      const SizedBox(width: 10.0),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, DataScreen.id),
                        child: Text(
                          'IoT Data Screen',
                          style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: const Dashboard(),
          );
  }
}
