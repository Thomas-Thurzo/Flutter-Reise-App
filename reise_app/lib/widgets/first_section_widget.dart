import 'package:flutter/material.dart';
import 'package:reise_app/konstanten.dart';

int aktuellerIndex = 0;
String name = 'Porto Santo';
String untertitel = 'Portugal';

class FirstSectionWidget extends StatefulWidget {
  const FirstSectionWidget({super.key});

  @override
  State<FirstSectionWidget> createState() => _FirstSectionWidgetState();
}

class _FirstSectionWidgetState extends State<FirstSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: kHeight30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  aktuellerIndex = 0;
                });
              },
              child: Column(
                children: [
                  Text(
                    'Entdecke',
                    style: TextStyle(
                      fontSize: kFontSize18,
                      fontWeight:
                          aktuellerIndex == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: kWidth60,
                    child: Divider(
                      color:
                          aktuellerIndex == 0
                              ? Colors.amber
                              : Colors.transparent,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  aktuellerIndex = 1;
                });
              },
              child: Column(
                children: [
                  Text(
                    'Nummer',
                    style: TextStyle(
                      fontSize: kFontSize18,
                      fontWeight:
                          aktuellerIndex == 1
                              ? FontWeight.bold
                              : FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: Divider(
                      color:
                          aktuellerIndex == 1
                              ? Colors.amber
                              : Colors.transparent,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: kHeight20),
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kCircularBorder),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: Colors.black45,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kCircularBorder),
                child: Image.asset(
                  'assets/images/beach.jpg',
                  width: 150,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(name), Text(untertitel)],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
