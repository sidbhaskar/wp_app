import 'package:flutter/material.dart';
import 'package:wp_app/view/widgets/categoryblock.dart';
import 'package:wp_app/view/widgets/custom_appbar.dart';

import '../widgets/searchbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: 62,
          //   width: MediaQuery.of(context).size.width,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 10,
          //     itemBuilder: (context, index) => Categoryblock(),
          //   ),
          // ),
          SizedBox(height: 20),
          Expanded(
            // height: 500,
            // height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: GridView.builder(
                  // physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                    mainAxisExtent: MediaQuery.of(context).size.height / 2,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    // height: 70,
                    // color: Colors.amber,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://images.pexels.com/photos/445399/pexels-photo-445399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      // 'https://pbs.twimg.com/media/GMZ-MjZWUAAzmzl.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
