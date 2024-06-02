import 'package:flutter/material.dart';
import 'package:wp_app/view/widgets/categoryblock.dart';
import 'package:wp_app/view/widgets/custom_appbar.dart';

import '../widgets/searchbar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Image.network(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.black54, Colors.black12]),
                    // color: Colors.black38,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Cars',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
