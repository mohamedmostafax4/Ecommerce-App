import 'package:ecommerce/models/bottom_navbar_data.dart';
import 'package:ecommerce/models/card_best_selling.dart';
import 'package:ecommerce/models/custom_categories.dart';
import 'package:ecommerce/models/titles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarData(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 28,
                        ),
                        hintText: 'Search',
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu_rounded,
                    size: 40,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Titletxt(titileTxt: 'Categories'),
            SizedBox(
              height: 20,
            ),
            Container(height: 100, child: CustomCategory()),
            SizedBox(
              height: 10,
            ),
            Titletxt(titileTxt: 'Best Selling'),
            SizedBox(
              height: 10,
            ),
            CardGridview()
          ],
        ),
      ),
    );
  }
}
