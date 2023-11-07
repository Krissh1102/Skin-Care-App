import 'package:assignment2/models/Horizontal_slide/horizontalTabdata.dart';

import 'package:assignment2/models/Vertical_slide/verticalTabdata.dart';
import 'package:assignment2/src/ProductScreen.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeSrc extends StatefulWidget {
  const HomeSrc({super.key});

  @override
  State<HomeSrc> createState() => _HomeSrcState();
}

class _HomeSrcState extends State<HomeSrc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 60,
          leading: IconButton(
            icon: Image.asset('assets/icons/Icon (1).png'),
            onPressed: () {},
          ),
          actions: const [
            CircleAvatar(
              foregroundImage: AssetImage('assets/Ellipse.png'),
            )
          ],
          title: Text(
            'Home',
            style: GoogleFonts.sulphurPoint(
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 57, 56, 56),
            ),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Icon (2).png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Icon (3).png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Icon (4).png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Icon (5).png'), label: '')
        ]),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Welcome Text

                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hello\n',
                        style: GoogleFonts.sulphurPoint(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                      const TextSpan(
                        text: 'Welcome to Makeup hub.',
                        style: TextStyle(
                          color: Color(0xFFAA9E9E),
                          fontSize: 14,
                          fontFamily: 'Sulphur Point',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //Search form

                Row(
                  children: [
                    Form(
                      child: SizedBox(
                        width: 330,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Image.asset('assets/icons/Icon.png'),
                              hintText: 'Search'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/Icon (6).png'))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                //catageory Tab

                Container(
                  width: 386,
                  height: 21,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          height: 26,
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  color: Color(0xFF121212),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 124,
                        top: 0,
                        child: Text(
                          'Luxe',
                          style: TextStyle(
                            color: Color(0xFFEA4335),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 193,
                        top: 0,
                        child: Text(
                          'HD',
                          style: TextStyle(
                            color: Color(0xFF4D2161),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 251,
                        top: -1,
                        child: Text(
                          'Eye',
                          style: TextStyle(
                            color: Color(0xFF249B3E),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 315,
                        top: 0,
                        child: Text(
                          'Revlon',
                          style: TextStyle(
                            color: Color(0xFFAA9E9E),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: HorizontalData.horizontalproduct.length,
                        itemBuilder: (BuildContext, index) {
                          return _Horizontalview(index);
                        }),
                  ),
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Popular Products',
                      style: TextStyle(
                        color: Color(0xFF504949),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 15),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xFF504949),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: VerticalData.verticalproduct.length,
                        itemBuilder: (context, index) {
                          return _vertical_slide(index);
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _vertical_slide(int index) {
    return Container(
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
                image: AssetImage(VerticalData.verticalproduct[index].image),
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
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      VerticalData.verticalproduct[index].name,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 129, 70, 70),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      VerticalData.verticalproduct[index].description,
                      style: const TextStyle(
                        color: Color(0xFFAA9E9E),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      VerticalData.verticalproduct[index].price,
                      style: const TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 14,
                padding: const EdgeInsets.only(left: 10),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      '4.8',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 4),
                    Image(image: AssetImage('assets/icons/Icon (8).png'))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _Horizontalview(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductScreen()),
        );
      },
      child: Container(
        width: 230,
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
        padding: const EdgeInsets.all(14),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: 254,
            height: 219,
            child: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        HorizontalData.horizontalproduct[index].image),
                    width: 225,
                    height: 225,
                  ),
                ),
                const Positioned(
                    bottom: 170,
                    top: 0,
                    left: 0,
                    right: 160,
                    child:
                        Image(image: AssetImage('assets/icons/Icon (7).png')))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(HorizontalData.horizontalproduct[index].name,
                  style: const TextStyle(
                    color: Color(0xFF504949),
                    fontSize: 14,
                  )),
              const SizedBox(
                width: 60,
              ),
              const Image(image: AssetImage('assets/icons/Icon (8).png')),
              const Text('4.9',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}
