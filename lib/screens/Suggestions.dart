import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/models/ICardItem.dart';
import 'package:locl/screens/AllPolicies.dart';
import 'package:locl/widgets/ICard.dart';

class Suggestions extends StatefulWidget {
  static const String id = 'suggestions';
  const Suggestions({super.key});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  List<ICardItem> items = [];
  bool showSpinner = true;

  callme() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      showSpinner = false;
    });
  }

  @override
  void initState() {
    super.initState();
    callme();
    getPolicy();
  }

  getPolicy() {
    items = [
      ICardItem(
          "Standard Cardiac Health Coverage",
          "Price: \t 180.00 USD",
          "Category: \t heart",
          "Duration: \t 2 years",
          "Specialized coverage for cardiac health and related treatments.",
          "images/heart.png"),
      ICardItem(
          "Premium Cardiac Health Coverage",
          "Price: \t 280.00 USD",
          "Category: \t heart",
          "Duration: \t 2 years",
          "Specialized coverage for cardiac health and related treatments.",
          "images/heart_p.png"),
      ICardItem(
          "Fitness and Wellness Program",
          "Price: \t 200.00 USD",
          "Category: \t weight",
          "Duration: \t 2 years",
          "Encourages a healthy lifestyle with fitness guidance.",
          "images/fitness.png"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return showSpinner
        ? const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 27, 95, 86),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              // ignore: prefer_const_constructors
              title: Text(
                'Skibidi Insurance',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              backgroundColor: kDarkColor,
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
                        onTap: () => {},
                        child: Text(
                          'Suggested Policies',
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
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, DataScreen.id),
                    child: Text(
                      'All Policies',
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            body: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 16.0),
                    child: Text(
                      'Suggested Policies For You',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.green[900],
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 16.0),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 3.3),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          ICardItem item = items[index];
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ICard(item: item));
                        }),
                  ),
                  //   },
                  // ),
                ),
              ],
            ),
          );
  }
}
