import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/models/ICardItem.dart';

class ICard2 extends StatefulWidget {
  final ICardItem item;

  const ICard2({Key? key, required this.item}) : super(key: key);

  @override
  State<ICard2> createState() => _ICard2State();
}

class _ICard2State extends State<ICard2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Colors.blueGrey[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    widget.item.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0,
                        color: Colors.blueGrey[900],
                        fontFamily: GoogleFonts.lato().fontFamily),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(widget.item.name, style: textStyle()),
                  Text(widget.item.duration, style: textStyle()),
                  Text(widget.item.price, style: textStyle()),
                  Text(widget.item.discount, style: textStyle()),
                  Text(widget.item.desc, style: textStyle()),
                  const SizedBox(height: 20.0),
                ],
              ),
              Container(
                color: Colors.blueGrey[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(widget.item.image,
                      fit: BoxFit.contain, scale: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
