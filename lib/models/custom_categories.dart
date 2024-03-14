import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCategory extends StatelessWidget {
  CustomCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map> categorydata = [
      {
        'imageLink': 'images/sneakers.png',
        'title': 'Men',
      },
      {
        'imageLink': 'images/high-heels.png',
        'title': 'Woman',
      },
      {
        'imageLink': 'images/sustainable-energy.png',
        'title': 'Elictrical',
      },
      {
        'imageLink': 'images/hobbies.png',
        'title': 'Hobbies',
      },
      {
        'imageLink': 'images/sedan.png',
        'title': 'Cars',
      }
    ];
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categorydata.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100)),
              padding: const EdgeInsets.all(7),
              height: 70,
              width: 70,
              child: Image.asset(categorydata[index]['imageLink']),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              categorydata[index]['title'],
              style: GoogleFonts.concertOne(),
            )
          ],
        ),
      ),
    );
  }
}
