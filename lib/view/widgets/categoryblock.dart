import 'package:flutter/material.dart';

class Categoryblock extends StatelessWidget {
  const Categoryblock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
                height: 70,
                width: 120,
                fit: BoxFit.cover,
                "https://4kwallpapers.com/images/walls/thumbs_3t/10679.jpg"),
          ),
          Container(
            height: 70,
            width: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black87, Colors.transparent]),
              // color: Colors.black38,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Love',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
