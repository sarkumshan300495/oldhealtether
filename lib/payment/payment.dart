import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healtether_app/payment/payment2.dart';
import 'package:healtether_app/payment/payment3.dart';

class Payment_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Appointment',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              'assets/images/iconoir_cancel.png',
              height: 28,
              width: 28,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // payments10Txq (4:10619)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // additemsq89 (4:10624)
                margin:
                    EdgeInsets.fromLTRB(16 * fem, 10 * fem, 0 * fem, 22 * fem),
                child: Text(
                  'Add items',
                  style: TextStyle(
                    fontFamily: 'Arimo',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.15 * ffem / fem,
                    letterSpacing: 0.54 * fem,
                    color: Color(0xff747474),
                  ),
                ),
              ),
              Container(
                // autogroupugehYHT (NUyzdgLmqt2bBJusnNugeH)
                width: double.infinity,
                height: 699 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // frame2609436J1j (4:10625)
                      left: 16 * fem,
                      top: 0 * fem,
                      child: Container(
                        width: 359 * fem,
                        height: 664 * fem,
                        child: Container(
                          // frame26094141Rw (I4:10625;4:11036)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 12 * fem),
                          width: double.infinity,
                          height: 370 * fem,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Color(0xffe6e6e6)),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupvydpir9 (NUyzoktKBQUByGHrVDVydP)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 12 * fem, 0 * fem, 10 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // frame2609412rhT (I4:10625;4:11036;4:11005)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                      width: 358 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // treatment1CFX (I4:10625;4:11036;4:11006)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 6 * fem),
                                            child: Text(
                                              'Treatment 1',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                letterSpacing: 0.48 * fem,
                                                color: Color(0xff006270),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame153u9w (I4:10625;4:11036;4:11007)
                                            padding: EdgeInsets.fromLTRB(
                                                16 * fem,
                                                19 * fem,
                                                16 * fem,
                                                19 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff202741)),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      7 * fem),
                                            ),
                                            child: Text(
                                              'Treatment',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    1.2000000477 * ffem / fem,
                                                letterSpacing: 0.48 * fem,
                                                fontStyle: FontStyle.italic,
                                                color: Color(0xffbdbdbd),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // frame2609411b2m (I4:10625;4:11036;4:11009)
                                      width: 183 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // frame2609409Xx1 (I4:10625;4:11036;4:11010)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 4 * fem, 0 * fem),
                                            width: double.infinity,
                                            height: 58 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // quantitysFB (I4:10625;4:11036;4:11011)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      13 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Quantity',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * ffem / fem,
                                                      letterSpacing: 0.48 * fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609232z4u (I4:10625;4:11036;4:11012)
                                                  padding: EdgeInsets.fromLTRB(
                                                      16 * fem,
                                                      19 * fem,
                                                      16 * fem,
                                                      19 * fem),
                                                  width: 93 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff202741)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7 * fem),
                                                  ),
                                                  child: Text(
                                                    '1',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.2000000477 *
                                                          ffem /
                                                          fem,
                                                      letterSpacing: 0.48 * fem,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Color(0xffbdbdbd),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16 * fem,
                                          ),
                                          Container(
                                            // frame26094103os (I4:10625;4:11036;4:11015)
                                            width: double.infinity,
                                            height: 58 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // amtunitoY9 (I4:10625;4:11036;4:11016)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      15 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Amt/unit',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * ffem / fem,
                                                      letterSpacing: 0.48 * fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609233XDF (I4:10625;4:11036;4:11017)
                                                  width: 93 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff202741)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7 * fem),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      '00.00',
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.2000000477 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing:
                                                            0.48 * fem,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        color:
                                                            Color(0xffbdbdbd),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16 * fem,
                                          ),
                                          Container(
                                            // frame2609411zMj (I4:10625;4:11036;4:11019)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 7 * fem, 0 * fem),
                                            width: double.infinity,
                                            height: 58 * fem,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // dstratehmw (I4:10625;4:11036;4:11020)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      13 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Dst. rate',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * ffem / fem,
                                                      letterSpacing: 0.48 * fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // frame2609233cP7 (I4:10625;4:11036;4:11021)
                                                  padding: EdgeInsets.fromLTRB(
                                                      37 * fem,
                                                      19 * fem,
                                                      16 * fem,
                                                      19 * fem),
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff202741)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7 * fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // iww (I4:10625;4:11036;4:11022)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                2 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '0.0',
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height:
                                                                1.2000000477 *
                                                                    ffem /
                                                                    fem,
                                                            letterSpacing:
                                                                0.48 * fem,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color: Color(
                                                                0xffbdbdbd),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // qWm (I4:10625;4:11036;4:11023)
                                                        '%',
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2000000477 *
                                                              ffem /
                                                              fem,
                                                          letterSpacing:
                                                              0.48 * fem,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color:
                                                              Color(0xffbdbdbd),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame2609434aUM (I4:10625;4:11036;4:11024)
                                width: double.infinity,
                                height: 32 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame399jMF (I4:10625;4:11036;4:11025)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 128 * fem, 0 * fem),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              6 * fem, 0 * fem, 6 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  color: Color(0xff009394)),
                                            ),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // group36373pdb (I4:10625;4:11036;4:11026)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    12 * fem,
                                                    0 * fem),
                                                width: 14 * fem,
                                                height: 14 * fem,
                                                child: SvgPicture.asset(
                                                  'assets/icons/plus.svg',
                                                  width: 14 * fem,
                                                  height: 14 * fem,
                                                ),
                                              ),
                                              Text(
                                                // additemwCR (I4:10625;4:11036;4:11029)
                                                'Add item',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.2000000477 * ffem / fem,
                                                  letterSpacing: 0.48 * fem,
                                                  color: Color(0xff009394),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame2609413GEh (I4:10625;4:11036;4:11030)
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 6 * fem, 0 * fem, 6 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffb3b3b3)),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            // deleteitemyeu (I4:10625;4:11036;4:11033)
                                            'Delete item',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2000000477 * ffem / fem,
                                              letterSpacing: 0.48 * fem,
                                              color: Color(0xffb4b4b4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame2609438i6h (4:10648)
                      left: 0 * fem,
                      top: 490 * fem,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 2.5 * fem,
                            sigmaY: 2.5 * fem,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                27.5 * fem, 16 * fem, 27.5 * fem, 16 * fem),
                            width: 390 * fem,
                            height: 91 * fem,
                            decoration: BoxDecoration(
                              color: Color(0x33ffffff),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment_Screen2()),
                                );
                              },
                              child: Container(
                                // frame356aub (4:11622)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff03bf9c),
                                  borderRadius: BorderRadius.circular(7 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Make Receipt',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.28125 * ffem / fem,
                                      letterSpacing: 0.16 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
