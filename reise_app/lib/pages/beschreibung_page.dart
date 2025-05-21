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
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(kPadding20),
            child: Column(
              spacing: kHeight10,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  reisezielModel.untertitel,
                  style: TextStyle(fontSize: kFontSize18, color: Colors.white),
                ),
                Text(
                  reisezielModel.beschreibung,
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color:
                          reisezielModel.sterne >= 1
                              ? Colors.amber
                              : Colors.white70,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color:
                          reisezielModel.sterne >= 2
                              ? Colors.amber
                              : Colors.white70,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color:
                          reisezielModel.sterne >= 3
                              ? Colors.amber
                              : Colors.white70,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color:
                          reisezielModel.sterne >= 4
                              ? Colors.amber
                              : Colors.white70,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color:
                          reisezielModel.sterne >= 5
                              ? Colors.amber
                              : Colors.white70,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      ('Euro ${reisezielModel.neuerPreis},-'),
                      style: TextStyle(
                        fontSize: kFontSize18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: kPadding7),
                    Text(
                      ('Euro ${reisezielModel.alterPreis},-'),
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
