import 'package:assignment2/models/Horizontal_slide/horizontalTabdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Package Details",
            style: TextStyle(
              color: Color.fromARGB(255, 57, 56, 56),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            )),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/Icon (3).png'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: 386,
                    height: 505,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 48,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 354,
                          height: 332,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  HorizontalData.horizontalproduct.first.image),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/icons/Icon (8).png'),
                            const SizedBox(
                              width: 7,
                            ),
                            Image.asset('assets/icons/Icon (8).png'),
                            const SizedBox(
                              width: 7,
                            ),
                            Image.asset('assets/icons/Icon (8).png'),
                            const SizedBox(
                              width: 7,
                            ),
                            Image.asset('assets/icons/Icon (8).png'),
                            const SizedBox(
                              width: 7,
                            ),
                            Image.asset('assets/icons/Icon (8).png'),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text('4.9',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Abhigyna Makeovers',
                          style: TextStyle(
                            color: Color(0xFF504949),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Base Price',
                          style: TextStyle(
                            color: Color(0xFFAA9E9E),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                HorizontalData.horizontalproduct.first.price,
                                style: const TextStyle(
                                  color: Color(0xFF2D2D2D),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 180,
                            ),
                            const Text('with tax',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFFAA9E9E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Decription

                  Container(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(
                              color: Color(0xFF504949),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 386,
                            child: Text(
                              'The Abhigyna makeovers were currently the popular makeovers in India. Our company will provide services to your doorstep.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.phone_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 18,
                                    child: Text(
                                      'Call',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        color: const Color(0xFF1C1C28),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 0.16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 18,
                                    child: Text(
                                      'Location',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        color: const Color(0xFF1C1C28),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 0.16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.share,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 18,
                                    child: Text(
                                      'Share',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        color: const Color(0xFF1C1C28),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 0.16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF0C1F62)),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 4),
                                      SizedBox(
                                        width: 20,
                                        height: 22,
                                        child: Text(
                                          '4.9',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF0C1F62),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            height: 0.17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  '5k+ ratings',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0C1F62),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,



                                    
                                  ),
                                )
                              ],
                            )
                          ])
                        ],
                      ))
                ],
              ))),
    );
  }
}
