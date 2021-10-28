import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Ahadu Player',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
              fontFamily: "Audiowide",
              letterSpacing: 4,
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Yeah");
            },
            child: Container(
              height: 40,
              width: 40,
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
