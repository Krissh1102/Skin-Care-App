import 'package:assignment2/models/Horizontal_slide/horizontalTabdata.dart';
import 'package:assignment2/models/Vertical_slide/verticalTabdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
              padding: const EdgeInsets.all(8),
              height: 200,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 48,
                    offset: Offset(0, 2),
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 36,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEDEDED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.50),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    width: 386,
                    height: 57,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF5F4F4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Total:',
                          style: TextStyle(
                            color: Color(0xFF2D2D2D),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 233,
                        ),
                        Text(
                          '₹4320/-',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF2D2D2D),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          backgroundColor: Color.fromARGB(255, 0, 50, 92)),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'CHECKOUT',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 1,
                        ),
                      )),
                    ),
                  ),
                ],
              )),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
          title: const Text(
            'Cart',
            style: TextStyle(
              color: Color(0xFF504949),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Delivery Address',
                            style: TextStyle(
                              color: Color(0xFF504949),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 208,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_outlined))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          width: 386,
                          height: 120,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/maps.png'),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 189,
                                    child: Text(
                                      'Marina , bhanu towers, 12/8AB',
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF1D1E20),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 151,
                                    child: Text(
                                      'Chennai, India',
                                      style: TextStyle(
                                        color: Color(0xFFAA9E9E),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 0.14,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Payment Method',
                            style: TextStyle(
                              color: Color(0xFF504949),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 190,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_outlined))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 386,
                          padding: const EdgeInsets.all(8),
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 52,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/creditcard.jpg')),
                                  color: const Color(0xFFF6EDED),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Credit Card',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '2188 4829 4721 8419',
                                    style: TextStyle(
                                      color: Color(0xFF504949),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'My Cart',
                        style: TextStyle(
                          color: Color(0xFF504949),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(12),
                          width: double.infinity,
                          height: 125.06,
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
                              ),
                            ],
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 107,
                                  height: 106,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(HorizontalData
                                          .horizontalproduct.first.image),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 230,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              HorizontalData
                                                  .horizontalproduct.first.name,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const Text(
                                              'Face Care',
                                              style: TextStyle(
                                                color: Color(0xFFAA9E9E),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  HorizontalData
                                                      .horizontalproduct
                                                      .first
                                                      .price,
                                                  style: const TextStyle(
                                                    color: Color(0xFF2D2D2D),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 65,
                                                ),
                                                SideWidget()
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])
                              ])),
                      Container(
                        width: 386,
                        height: 136,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          width: double.infinity,
                          height: 125.06,
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
                              ),
                            ],
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 107,
                                  height: 106,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(VerticalData
                                          .verticalproduct.first.image),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 230,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            VerticalData
                                                .verticalproduct.first.name,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            VerticalData.verticalproduct.first
                                                .description,
                                            style: const TextStyle(
                                              color: Color(0xFFAA9E9E),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                VerticalData.verticalproduct
                                                    .first.price,
                                                style: const TextStyle(
                                                  color: Color(0xFF2D2D2D),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 65,
                                              ),
                                              SideWidget()
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ]))));
  }

  Container SideWidget() {
    return Container(
      width: 95,
      height: 36,
      decoration: ShapeDecoration(
        color: Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Row(children: [
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 24,
          height: 24,
          child: ImageIcon(
            AssetImage('assets/Icon (10).png'),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          '1',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF2D2D2D),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
            width: 24,
            height: 24,
            child: ImageIcon(
              AssetImage('assets/Icon (9).png'),
            )),
      ]),
    );
  }
}
