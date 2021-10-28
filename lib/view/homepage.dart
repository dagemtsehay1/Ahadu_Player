import 'package:ahadu_player/view/widgets/homeAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HomePageAppBar(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  Icon(FontAwesome.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    onChanged: (value) {
                      print(value);
                      print(value.length);
                    },
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        letterSpacing: 2,
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
