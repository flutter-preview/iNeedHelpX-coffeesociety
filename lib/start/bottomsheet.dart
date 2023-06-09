import 'package:coffeesociety/colors/colours_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

Future<dynamic> bottomSheet(BuildContext context) async {
  return showModalBottomSheet(
      backgroundColor: prettyPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      context: context,
      builder: (BuildContext context) {
        //the purple pop up container

        return SafeArea(
          //column is centered btw!
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              //replace this text here with something else later!
              Text(
                "Pay with QR code coming soon!",
                textAlign: TextAlign.center,
                style: GoogleFonts.courgette(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "This just opens my personal website for now, but check back later!",
                textAlign: TextAlign.center,
                style: GoogleFonts.sniglet(
                  fontSize: 18,
                  color: textgreyblue,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient:
                      FlutterGradients.glassWater(tileMode: TileMode.clamp),
                ),
                child: PrettyQr(
                  image: AssetImage('assets/icons/cup.png'),
                  size: 300,
                  data: 'https://juliapak.tech',
                  errorCorrectLevel: QrErrorCorrectLevel.H,
                  roundEdges: true,
                  typeNumber: 8,
                ),
              )
            ],
          ),
        );
        //must return something here so yeah, just replace once you know what to do!
      });
}
