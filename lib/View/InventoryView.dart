import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class inventoryView extends StatelessWidget {
  const inventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inventory',
          style: GoogleFonts.poppins(
            color: Color(0xff003566),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 5,
                            color: Color(0xff000814).withOpacity(0.05))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 9),
                  child: Image.asset('assets/cog.png'),
                )
              ]),
              Container(
                height: 52,
                width: 260,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 5,
                          color: Color(0xff000814).withOpacity(0.05))
                    ]),
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 5,
                            color: Color(0xff000814).withOpacity(0.05))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, top: 9),
                  child: Image.asset('assets/report.png'),
                )
              ]),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(children: [
            Container(
              height: 100,
              width: 382.83,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff003566),
                  ),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, bottom: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product",
                    style: GoogleFonts.poppins(
                        color: Color(0xff003566),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    "My Etalase Product",
                    style: GoogleFonts.poppins(
                      color: Color(0xff001D3D),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ]),
          Stack(children: [
            Container(
              height: 100,
              width: 382.83,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff003566),
                  ),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, bottom: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Raw Material",
                    style: GoogleFonts.poppins(
                        color: Color(0xff003566),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    "Raw Material",
                    style: GoogleFonts.poppins(
                      color: Color(0xff001D3D),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ]),
          Stack(children: [
            Container(
              height: 100,
              width: 382.83,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff003566),
                  ),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, bottom: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Work in Progress",
                    style: GoogleFonts.poppins(
                        color: Color(0xff003566),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    "Work in Progress",
                    style: GoogleFonts.poppins(
                      color: Color(0xff001D3D),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ]),
          Stack(children: [
            Container(
              height: 100,
              width: 382.83,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff003566),
                  ),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, bottom: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MRO",
                    style: GoogleFonts.poppins(
                        color: Color(0xff003566),
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    "Maintenance Repairing & Operations",
                    style: GoogleFonts.poppins(
                      color: Color(0xff001D3D),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
