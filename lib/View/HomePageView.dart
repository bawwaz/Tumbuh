import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create an instance of the Theme class

    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8, top: 8),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff0D062D),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 7.5),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 35,
                ),
              )
            ],
          )
        ],
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0xff0D062D),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Bawwaz!",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "View account",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 115, 115, 115),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 21,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Rewards & Equity",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xff0D062D),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff001D3D)),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 225,
                height: 47,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Stack(children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff001D3D), Color(0xff003566)]),
              border: Border.all(
                color: Color(0xffFFD60A),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 120,
            width: 378,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 142.0, top: 36),
                child: Text(
                  "Apply for general",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 142.0),
                child: Text(
                  "Business License",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ]),
        SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Business Console",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 39,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  height: 172,
                  width: 265,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff0D062D)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 172,
                  width: 265,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff0D062D)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 172,
                  width: 265,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff0D062D)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}