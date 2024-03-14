import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key, this.data}) : super(key: key);

  final dynamic data;

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'بيكيا',
          style: GoogleFonts.arefRuqaaInk(color: Colors.black, fontSize: 35),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            child: Image.network(
              widget.data.image.toString(),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              widget.data.title.toString(),
              style: GoogleFonts.patuaOne(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              widget.data.category.toString(),
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              widget.data.price.toString(),
              style: GoogleFonts.patuaOne(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Color:',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey,
                ),
              ),
              Text('Gray'),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text('Black'),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Size:'),
              SizedBox(
                width: 15,
              ),
              Text('39'),
              SizedBox(
                width: 15,
              ),
              Text('40'),
              SizedBox(
                width: 15,
              ),
              Text(
                '41',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Text('42'),
              SizedBox(
                width: 15,
              ),
              Text('43'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text('+ Add To Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
