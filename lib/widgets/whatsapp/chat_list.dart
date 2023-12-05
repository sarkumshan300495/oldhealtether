import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class chat_display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
       appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Icon(
      Icons.arrow_back,
      size: 24,
      color: Colors.black,
    )),
    title: Text(
      'Chat',
      style: TextStyle(
      fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    ),
    actions: [
      Padding(
    padding: const EdgeInsets.only(right: 22),
    child: TextButton(
                          // frame362YgD (1:3148)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 75*fem,
                            height: 23*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff03bf9c),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Text(
                                'New chat',
                                style: TextStyle (
                                fontFamily:  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4375*ffem/fem,
                                  letterSpacing: -0.16*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
      )
    ],
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // chatlistFmf (1:3039)
          width: double.infinity,
        //  decoration: BoxDecoration (
        //     border: Border.all(color: Color(0xff000000)),
        //     color: Color(0xffffffff),
        //     borderRadius: BorderRadius.circular(20*fem),
        //   ), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame2378aZ (1:3141)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                padding: EdgeInsets.fromLTRB(27*fem, 0*fem, 22*fem, 5*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                   
                    Container(
                      // group36338Ckm (1:3151)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                      width: 335*fem,
                      height: 59*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(7*fem),
                      ),
                      child: Container(
                        // frame152Xo3 (1:3152)
                        padding: EdgeInsets.fromLTRB(16*fem, 19*fem, 16*fem, 19*fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff2e2d32)),
                          borderRadius: BorderRadius.circular(7*fem),
                        ),
                        child: Text(
                          'Quick search',
                          style: TextStyle (
                         fontFamily:    'Poppins',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.28125*ffem/fem,
                            letterSpacing: -0.16*fem,
                            fontStyle: FontStyle.italic,
                            color: Color(0xff6a798a),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      // recentchatsPKT (1:3154)
                      'Recent Chats',
                      style: TextStyle (
                     fontFamily:    'Poppins',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.28125*ffem/fem,
                        letterSpacing: -0.16*fem,
                        color: Color(0xff6a798a),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupbbqfKU1 (NUxJBRZAAEXbbaKriZbbqf)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1036*fem),
                width: double.infinity,
                height: 806*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // frame360eFP (1:3040)
                      left: 27*fem,
                      top: 0*fem,
                      child: Container(
                        width: 336*fem,
                        height: 806*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame226im3 (1:3041)
                              padding: EdgeInsets.fromLTRB(15*fem, 12*fem, 11*fem, 12*fem),
                              width: double.infinity,
                              height: 77*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xffeaceff)),
                                color: Color(0xfff7f0fc),
                                borderRadius: BorderRadius.circular(6*fem),
                              ),
                              child: TextButton(
                                // group36363dt1 (1:3042)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // ellipse763xfP (1:3043)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3*fem),
                                        width: 50*fem,
                                        height: 50*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(25*fem),
                                          color: Color(0xffd9d9d9),
                                        ),
                                      ),
                                      Container(
                                        // frame359snM (1:3044)
                                        width: 252*fem,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame357pxV (1:3045)
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rameshpateln8d (1:3046)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 125*fem, 0*fem),
                                                    child: Text(
                                                      'Ramesh Patel',
                                                      style: TextStyle (
                                                     fontFamily:    'Poppins',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.6428571429*ffem/fem,
                                                        letterSpacing: -0.14*fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // hFb (1:3047)
                                                    '14:30',
                                                    style: TextStyle (
                                                   fontFamily:    'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.9166666667*ffem/fem,
                                                      letterSpacing: -0.12*fem,
                                                      color: Color(0xff9c9c9c),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // frame358RxH (1:3048)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // vector224Zob (1:3049)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                                    width: 8*fem,
                                                    height: 6.5*fem,
                                                    child: Image.asset(
                                                      'assets/images/vector-224.png',
                                                      width: 8*fem,
                                                      height: 6.5*fem,
                                                    ),
                                                  ),
                                                  RichText(
                                                    // youhaveascheduledaappointmetL5 (1:3050)
                                                    text: TextSpan(
                                                      style: TextStyle (
                                                     fontFamily:    'Poppins',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.9166666667*ffem/fem,
                                                        letterSpacing: -0.12*fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'You have a scheduled a appointme ',
                                                          style: TextStyle (
                                                         fontFamily:    'Poppins',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.9166666667*ffem/fem,
                                                            letterSpacing: 0.12*fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                         fontFamily:    'Poppins',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.9166666667*ffem/fem,
                                                            letterSpacing: -0.12*fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                         fontFamily:    'Poppins',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.9166666667*ffem/fem,
                                                            letterSpacing: -0.06*fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '.',
                                                          style: TextStyle (
                                                         fontFamily:    'Poppins',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.9166666667*ffem/fem,
                                                            letterSpacing: -0.12*fem,
                                                            color: Color(0xff000000),
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
                              ),
                            ),
                            SizedBox(
                              height: 4*fem,
                            ),
                            Container(
                              // frame227V6u (1:3051)
                              padding: EdgeInsets.fromLTRB(15*fem, 12*fem, 11*fem, 12*fem),
                              width: double.infinity,
                              height: 77*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xffeaceff)),
                                color: Color(0xfff7f0fc),
                                borderRadius: BorderRadius.circular(6*fem),
                              ),
                              child: Container(
                                // group36363QzZ (1:3052)
                                width: double.infinity,
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // ellipse763Ayj (1:3053)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(25*fem),
                                        color: Color(0xffd9d9d9),
                                      ),
                                    ),
                                    Container(
                                      // frame359VFK (1:3054)
                                      width: 252*fem,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // frame357qKB (1:3055)
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rameshpatelPLh (1:3056)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 125*fem, 0*fem),
                                                  child: Text(
                                                    'Ramesh Patel',
                                                    style: TextStyle (
                                                   fontFamily:    'Poppins',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.6428571429*ffem/fem,
                                                      letterSpacing: -0.14*fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // 7Gh (1:3057)
                                                  '14:30',
                                                  style: TextStyle (
                                                 fontFamily:    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.9166666667*ffem/fem,
                                                    letterSpacing: -0.12*fem,
                                                    color: Color(0xff9c9c9c),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // frame358Fdo (1:3058)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // vector224bBs (1:3059)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                                  width: 8*fem,
                                                  height: 6.5*fem,
                                                  child: Image.asset(
                                                    'assets/images/vector-224.png',
                                                    width: 8*fem,
                                                    height: 6.5*fem,
                                                  ),
                                                ),
                                                RichText(
                                                  // youhaveascheduledaappointmeWZj (1:3060)
                                                  text: TextSpan(
                                                    style: TextStyle (
                                                   fontFamily:    'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.9166666667*ffem/fem,
                                                      letterSpacing: -0.12*fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: 'You have a scheduled a appointme ',
                                                        style: TextStyle (
                                                       fontFamily:    'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.9166666667*ffem/fem,
                                                          letterSpacing: 0.12*fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '.',
                                                        style: TextStyle (
                                                       fontFamily:    'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.9166666667*ffem/fem,
                                                          letterSpacing: -0.12*fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '.',
                                                        style: TextStyle (
                                                       fontFamily:    'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.9166666667*ffem/fem,
                                                          letterSpacing: -0.06*fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '.',
                                                        style: TextStyle (
                                                       fontFamily:    'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.9166666667*ffem/fem,
                                                          letterSpacing: -0.12*fem,
                                                          color: Color(0xff000000),
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
                            ),
                            SizedBox(
                              height: 4*fem,
                            ),
                            Container(
                              // frame228rfX (1:3061)
                              padding: EdgeInsets.fromLTRB(15*fem, 12*fem, 11*fem, 12*fem),
                              width: double.infinity,
                              height: 77*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xffeaceff)),
                                color: Color(0xfff7f0fc),
                                borderRadius: BorderRadius.circular(6*fem),
                              ),
                              child: Container(
                                // group36363Bho (1:3062)
                                width: double.infinity,
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // ellipse763Lah (1:3063)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(25*fem),
                                        color: Color(0xffd9d9d9),
                                      ),
                                    ),
                                    Container(
                                      // frame3594Wh (1:3064)
                                      width: 252*fem,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // frame357oz5 (1:3065)
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rameshpatelNXP (1:3066)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 125*fem, 0*fem),
                                                  child: Text(
                                                    'Ramesh Patel',
                                                    style: TextStyle (
                                                   fontFamily:    'Poppins',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.6428571429*ffem/fem,
                                                      letterSpacing: -0.14*fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // hJm (1:3067)
                                                  '14:30',
                                                  style: TextStyle (
                                                 fontFamily:    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.9166666667*ffem/fem,
                                                    letterSpacing: -0.12*fem,
                                                    color: Color(0xff9c9c9c),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // frame358dTK (1:3068)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // vector224Zbs (1:3069)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                                  width: 8*fem,
                                                  height: 6.5*fem,
                                                  child: Image.asset(
                                                    'assets/images/vector-224.png',
                                                    width: 8*fem,
                                                    height: 6.5*fem,
                                                  ),
                                                ),
                                                  Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 3),
                                child: Text(
                                  
                                  "You have a scheduled a appointment with Dr. Ajit Bhalla",
                                             style: TextStyle (
                                                
                                                   fontFamily:    'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.9166666667*ffem/fem,
                                                      letterSpacing: -0.12*fem,
                                                      color: Color(0xff000000),
                                                    ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                                                // RichText(
                                                //   // youhaveascheduledaappointmeVEd (1:3070)
                                                //   text: TextSpan(
                                                //              text: 'You have a scheduled a appointments ',
                                                //     style: TextStyle (
                                                
                                                //    fontFamily:    'Poppins',
                                                //       fontSize: 12*ffem,
                                                //       fontWeight: FontWeight.w700,
                                                //       height: 1.9166666667*ffem/fem,
                                                //       letterSpacing: -0.12*fem,
                                                //       color: Color(0xff000000),
                                                //     ),
                                                    
                                                //   ),
                                                // ),
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
                         
                       
                    
                          
                          ],
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