import 'dart:convert';

import 'package:ecommerce/data/items.dart';
import 'package:ecommerce/data/services.dart';
import 'package:ecommerce/screen/details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardGridview extends StatefulWidget {
  CardGridview({
    super.key,
  });

  @override
  State<CardGridview> createState() => _CardGridviewState();
}

class _CardGridviewState extends State<CardGridview> {
  late Future<List<Item>> futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureData,
      builder: (context, AsyncSnapshot<List<Item>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return CircularProgressIndicator while data is loading
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          // Return GridView.builder when data is available
          return GridView.builder(
            itemCount: snapshot.data!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 250),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ItemDetails(data: snapshot.data![index]),
                ));
              },
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey[200],
                        child: Image.network(
                          snapshot.data![index].image.toString(),
                          fit: BoxFit.scaleDown,
                          height: double.maxFinite,
                          width: double.maxFinite,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        snapshot.data![index].title.toString(),
                        style: GoogleFonts.patuaOne(fontSize: 20),
                        maxLines: 1,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        snapshot.data![index].category.toString(),
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        snapshot.data![index].price.toString(),
                        style: GoogleFonts.titanOne(
                            color: Colors.red, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          // Handle error state
          return Text('Error: ${snapshot.error}');
        }
        return Container(); // Return an empty container as a fallback
      },
    );
  }
}
