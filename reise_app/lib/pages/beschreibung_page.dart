import 'package:flutter/material.dart';
import 'package:reise_app/models/reiseziel_model.dart';

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
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            title: Text(reisezielModel.titel),
          ),
        ),
      ],
    );
  }
}
