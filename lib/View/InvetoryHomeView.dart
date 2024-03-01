import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvHome extends StatelessWidget {
  const InvHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inventory",
          style: GoogleFonts.poppins(
              color: Color(0xff003566),
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 38,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 65,
                  width: 174,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 5,
                          color: Color(0xff000814).withOpacity(0.05))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 400,
                            child: Stack(
                              children: [Container(
                                width: 396,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 0,
                                        blurRadius: 5,
                                        color: Color(0xff000814),
                                      ),
                                    ]),
                              ),] 
                            ),
                          );
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 21.0, left: 61),
                    child: Text(
                      "Add",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Container(
                  height: 65,
                  width: 174,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 5,
                          color: Color(0xff000814).withOpacity(0.05))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 21.0, left: 47),
                  child: Text(
                    "Check",
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 34,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 34.0),
          child: Align(
            alignment: Alignment.centerLeft,
            // alignment: Alignment.centerLeft,
            child: Text(
              "Overview Inventory",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Stack(
          children: [
            Center(
              child: Container(
                height: 243,
                width: 366,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 5,
                        color: Color(0xff000814).withOpacity(0.5),
                      )
                    ]),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total items",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Product In",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 42,
                    ),
                    Text(
                      "Product Out",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                  width: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "577",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 66,
                    ),
                    Text(
                      "22,234",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      "10,900",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  width: 327,
                  height: 0.5,
                  decoration:
                      BoxDecoration(color: Color(0xff000000).withOpacity(0.4)),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rp. 44.000.000",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Total sales",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 42,
                    ),
                    Text(
                      "FY 22-23",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 336,
                        height: 69,
                        decoration: BoxDecoration(
                          color: Color(0xffC3B6DE),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Stock Value',
                              style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Gross Sales",
                              style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Service Fee",
                              style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '3,25,000',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Text(
                              "1,80,000",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "206,85",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
