import 'package:flutter/material.dart';
import 'package:reise_app/models/reiseziel_model.dart';
import 'package:reise_app/konstanten.dart';

class BeschreibungPage extends StatelessWidget {
  const BeschreibungPage({super.key, required this.reisezielModel});

  final ReisezielModel reisezielModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(reisezielModel.imagePath, fit: BoxFit.cover),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(backgroundColor: Colors.transparent),
          body: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              spacing: kHeight10,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  reisezielModel.titel,
                  style: TextStyle(
                    fontSize: kFontSize40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  reisezielModel.beschreibung,
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(Icons.star_rate_rounded, color: Colors.amber),
                    Icon(Icons.star_rate_rounded, color: Colors.amber),
                    Icon(Icons.star_rate_rounded, color: Colors.amber),
                    Icon(Icons.star_rate_rounded, color: Colors.amber),
                    Icon(Icons.star_rate_rounded, color: Colors.black12),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Euro 130,-',
                      style: TextStyle(
                        fontSize: kFontSize18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: kPadding7),
                    Text(
                      '199,-',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: kFontSize18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
