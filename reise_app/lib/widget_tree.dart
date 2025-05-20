import 'package:flutter/material.dart';
import 'package:reise_app/pages/home_page.dart';
import 'package:reise_app/pages/menu_page.dart';
import 'package:reise_app/pages/profile_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  List<Widget> pages = [HomePage(), MenuPage(), ProfilePage()];
  int aktuellePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(aktuellePage),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  aktuellePage = 0;
                });
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  aktuellePage = 1;
                });
              },
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  aktuellePage = 2;
                });
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
