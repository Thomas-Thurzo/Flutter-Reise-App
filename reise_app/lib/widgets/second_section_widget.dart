import 'package:flutter/material.dart';
import 'package:reise_app/data/reiseziel_data.dart';
import 'package:reise_app/konstanten.dart';
import 'package:reise_app/models/reiseziel_model.dart';
import 'package:reise_app/pages/beschreibung_page.dart';

class SecondSectionWidget extends StatelessWidget {
  const SecondSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Entdecke',
            style: TextStyle(
              fontSize: kFontSize18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: kPadding15),
          ListView.builder(
            itemCount: 5,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BeschreibungPage(
                          reisezielModel: reisezieleListe.elementAt(index),
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: kPadding7),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.02),
                    borderRadius: BorderRadius.circular(kCircularBorder),
                  ),
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(kPadding7),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kCircularBorder),
                          child: Image.asset(
                            reisezieleListe.elementAt(index).imagePath,
                            width: 100,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: kPadding15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            reisezieleListe.elementAt(index).titel,
                            style: TextStyle(
                              fontSize: kFontSize18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(reisezieleListe.elementAt(index).untertitel),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    reisezieleListe.elementAt(index).sterne >= 1
                                        ? Colors.amber
                                        : Colors.white70,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    reisezieleListe.elementAt(index).sterne >= 2
                                        ? Colors.amber
                                        : Colors.white70,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    reisezieleListe.elementAt(index).sterne >= 3
                                        ? Colors.amber
                                        : Colors.white70,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    reisezieleListe.elementAt(index).sterne >= 4
                                        ? Colors.amber
                                        : Colors.white70,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color:
                                    reisezieleListe.elementAt(index).sterne >= 5
                                        ? Colors.amber
                                        : Colors.white70,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                ('Euro ${reisezieleListe.elementAt(index).neuerPreis},-'),
                                style: TextStyle(
                                  fontSize: kFontSize18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(width: kPadding7),
                              Text(
                                ('Euro ${reisezieleListe.elementAt(index).alterPreis},-'),
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
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
