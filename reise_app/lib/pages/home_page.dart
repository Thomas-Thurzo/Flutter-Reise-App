import 'package:flutter/material.dart';
import 'package:reise_app/konstanten.dart';
import 'package:reise_app/widgets/first_section_widget.dart';
import 'package:reise_app/widgets/second_section_widget.dart';
import 'package:reise_app/widgets/ueberschrift_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Reisebüro App')),
            ListTile(
              onTap: () {},
              title: Text('Logout'),
              subtitle: Text('Zum Logout drücken'),
              trailing: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(size: kAppBarIconSize),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Text('Reisbüro App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UeberschriftWidget(),
            FirstSectionWidget(),
            SecondSectionWidget(),
          ],
        ),
      ),
    );
  }
}
