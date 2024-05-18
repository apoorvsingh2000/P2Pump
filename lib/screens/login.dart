import 'dart:io';

import 'package:locl/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:locl/home.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  bool showSpinner = false;
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCardColor,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Stack(
          children: [
            Image.asset(
              'images/login.jpg',
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: 'logo',
                        child: SizedBox(
                          height: controller.value * 500,
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'P-2-Pump',
                            speed: const Duration(milliseconds: 100),
                            textStyle: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                        color: const Color(0xFF232441),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "E-mail",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                    color: kCardColor),
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 5),
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                      hintText: "",
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Password",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                    color: kCardColor),
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 5),
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                      hintText: "",
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Material(
                            elevation: 5.0,
                            color: kCardColor,
                            borderRadius: BorderRadius.circular(30.0),
                            child: MaterialButton(
                              onPressed: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  pageBuilder: (_, __, ___) =>
                                      const HomeScreen(),
                                ),
                              ),
                              height: 42.0,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
