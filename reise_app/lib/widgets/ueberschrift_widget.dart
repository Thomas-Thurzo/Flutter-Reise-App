import 'package:flutter/material.dart';
import 'package:reise_app/konstanten.dart';

class UeberschriftWidget extends StatelessWidget {
  const UeberschriftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kPadding20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Finde',
            style: TextStyle(
              fontSize: kFontSize40,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          Text(
            'eine schöne Welt',
            style: TextStyle(
              fontSize: kFontSize40,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
