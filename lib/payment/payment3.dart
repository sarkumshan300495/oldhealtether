import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Payment3 extends StatelessWidget {
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
          // payments114Mj (4:10722)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           
              Container(
                // autogroupu1stfnm (NUz6uVtZNHJNpdtzD4u1sT)
                padding: EdgeInsets.fromLTRB(16*fem, 9*fem, 15*fem, 17*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame2609433bwK (4:10751)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 60*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame2609433Le1 (6:11854)
                            width: 358*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame2609419ghs (6:11855)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                  width: double.infinity,
                                  height: 30*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame26094182Fw (6:11856)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 126*fem, 0*fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // invoiceZWm (6:11857)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                              child: Text(
                                                'Invoice :',
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.6*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // 4yK (6:11858)
                                              '263',
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 20*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.6*fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        // july2023og1 (6:11859)
                                        '4 July, 2023',
                                        textAlign: TextAlign.right,
                                        style: TextStyle (
                                           fontFamily:  'Poppins',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: 0.48*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame2609420Y7o (6:11860)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // patientsvm (6:11861)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                        child: Text(
                                          'Patient :',
                                          style: TextStyle (
                                             fontFamily:  'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: 0.54*fem,
                                            color: Color(0xff009394),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // rameshpatelnnq (6:11862)
                                        'Ramesh Patel',
                                        style: TextStyle (
                                           fontFamily:  'Poppins',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: 0.54*fem,
                                          color: Color(0xff009394),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame2609427Eeq (6:11863)
                            padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 12*fem),
                            width: double.infinity,
                           
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // itemspriceZBK (6:11864)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // itemsinfoHd7 (I6:11864;4:10957)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 27*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // treatmentspd3 (I6:11864;4:10958)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22.5*fem, 0*fem),
                                              child: Text(
                                                'Treatments',
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.36*fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // qtyY3F (I6:11864;4:10959)
                                              'Qty',
                                              textAlign: TextAlign.center,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.36*fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // taxf7s (I6:11864;4:10960)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 45*fem,
                                        ),
                                        child: Text(
                                          'Tax Amt.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle (
                                             fontFamily:  'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            letterSpacing: 0.36*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // amtwr5 (I6:11864;4:10961)
                                        'Amt.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle (
                                           fontFamily:  'Poppins',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: 0.36*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame2609426szd (6:11865)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // itemspricediu (6:11866)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                        width: double.infinity,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // itemsinfoNAh (I6:11866;4:10957)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.5*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // treatmentshyf (I6:11866;4:10958)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.5*fem, 0*fem),
                                                    child: Text(
                                                      'Consultaion',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.48*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // qtyq4H (I6:11866;4:10959)
                                                    '1',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff202741),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // taxB89 (I6:11866;4:10960)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                                              child: Text(
                                                '50.00',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.48*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // amttHT (I6:11866;4:10961)
                                              '500.00',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // itemsprice2Pf (6:11867)
                                        width: double.infinity,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // itemsinfoNyK (I6:11867;4:10957)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 69.5*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // treatmentsKtZ (I6:11867;4:10958)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93.5*fem, 0*fem),
                                                    child: Text(
                                                      'IV drip',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.48*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // qtyeR3 (I6:11867;4:10959)
                                                    '1',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff202741),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // taxnn9 (I6:11867;4:10960)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                                              child: Text(
                                                '18.00',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.48*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // amt7Jd (I6:11867;4:10961)
                                              '50.00',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
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
                            // autogroup27fbT7b (NUz74unYS8pWsHiMXZ27fb)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame2609422ohF (6:11868)
                                  padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 12*fem),
                                  width: 358*fem,
                                      decoration: BoxDecoration (
                                          border: Border(
                                            top: BorderSide( color: Color(0xffd1d1d1)),
                                           ),
                                        ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // itemspriceTWu (6:11869)
                                        width: double.infinity,
                                        height: 27*fem,
                                        
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // itemsinfobd7 (6:11870)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // totalamt98q (6:11871)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                                                    child: Text(
                                                      'Total Amt.',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // Fhf (6:11872)
                                                    '-',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // Pos (6:11873)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                              child: Text(
                                                '550.00',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.54*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // inr6yB (6:11874)
                                              'INR',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16*fem,
                                      ),
                                      Container(
                                        // itemspricedTK (6:11875)
                                        width: double.infinity,
                                        height: 27*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // itemsinfonb7 (6:11876)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // totaltaxijf (6:11877)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                                                    child: Text(
                                                      'Total Tax',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // R8H (6:11878)
                                                    '-',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // MGq (6:11879)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                              child: Text(
                                                '68.00',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.54*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // inr3vM (6:11880)
                                              'INR',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16*fem,
                                      ),
                                      Container(
                                        // itemspriceAk5 (6:11881)
                                        width: double.infinity,
                                        height: 27*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // itemsinfoiWh (6:11882)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // totalcostTUH (6:11883)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 60*fem, 0*fem),
                                                    child: Text(
                                                      'Total Cost',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // NbF (6:11884)
                                                    '-',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // WxM (6:11885)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                              child: Text(
                                                '618.00',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.54*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // inr3SV (6:11886)
                                              'INR',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16*fem,
                                      ),
                                      Container(
                                        // itemspriceBYh (6:11887)
                                        width: double.infinity,
                                        height: 27*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // itemsinfojaD (6:11888)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 97*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // discount10tT7 (6:11889)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                                    child: Text(
                                                      'Discount @10%',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.54*fem,
                                                        color: Color(0xff202741),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // ce1 (6:11890)
                                                    '-',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // mG1 (6:11891)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                              child: Text(
                                                '61.80',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.54*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // inrVSu (6:11892)
                                              'INR',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // paymentinfoqWm (6:11834)
                                  width: 358*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // totalamountBKj (I6:11834;4:10984)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 12*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border(
                                            top:BorderSide( color: Color(0xffd1d1d1)),
                                               bottom:BorderSide( color: Color(0xffd1d1d1))
                                           ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // itemsprice5vu (I6:11834;4:10985)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              width: double.infinity,
                                              height: 30*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemsinfoQyB (I6:11834;4:10986)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // grandtotalYpV (I6:11834;4:10987)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                                                          child: Text(
                                                            'Grand Total ',
                                                            style: TextStyle (
                                                               fontFamily:  'Poppins',
                                                              fontSize: 20*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.6*fem,
                                                              color: Color(0xff006270),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          // fPK (I6:11834;4:10988)
                                                          '-',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle (
                                                             fontFamily:  'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.5*ffem/fem,
                                                            letterSpacing: 0.48*fem,
                                                            color: Color(0xff006270),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // p1K (I6:11834;4:10989)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                                    child: Text(
                                                      '556.20',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 20*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.6*fem,
                                                        color: Color(0xff006270),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // inrXwK (I6:11834;4:10990)
                                                    'INR',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff202741),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // itemsprice5hw (I6:11834;4:10991)
                                              width: double.infinity,
                                              height: 30*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemsinfoEqj (I6:11834;4:10992)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // amtreceivedBW5 (I6:11834;4:10993)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                          child: Text(
                                                            'Amt Received',
                                                            style: TextStyle (
                                                               fontFamily:  'Poppins',
                                                              fontSize: 20*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.6*fem,
                                                              color: Color(0xff006270),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          // Jqb (I6:11834;4:10994)
                                                          '-',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle (
                                                             fontFamily:  'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.5*ffem/fem,
                                                            letterSpacing: 0.48*fem,
                                                            color: Color(0xff006270),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // TiV (I6:11834;4:10995)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                                    child: Text(
                                                      '200.00',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 20*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.6*fem,
                                                        color: Color(0xff006270),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // inrBPb (I6:11834;4:10996)
                                                    'INR',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff202741),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // itemsprice7o3 (I6:11834;4:10997)
                                        width: double.infinity,
                                        height: 30*fem,
                                       
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // itemsinfoUNh (I6:11834;4:10998)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72.5*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // balanceamtDLH (I6:11834;4:10999)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 0*fem),
                                                    child: Text(
                                                      'Balance Amt.',
                                                      style: TextStyle (
                                                         fontFamily:  'Poppins',
                                                        fontSize: 20*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        letterSpacing: 0.6*fem,
                                                        color: Color(0xff006270),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // 8TF (I6:11834;4:11000)
                                                    '-',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle (
                                                       fontFamily:  'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.54*fem,
                                                      color: Color(0xff006270),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // re9 (I6:11834;4:11001)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                              child: Text(
                                                '356.20',
                                                textAlign: TextAlign.right,
                                                style: TextStyle (
                                                   fontFamily:  'Poppins',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.6*fem,
                                                  color: Color(0xff006270),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // inryTs (I6:11834;4:11002)
                                              'INR',
                                              textAlign: TextAlign.right,
                                              style: TextStyle (
                                                 fontFamily:  'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff202741),
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
                      // frame2609504v8D (8:4384)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 335*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame26094353id (6:11908)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                            padding: EdgeInsets.fromLTRB(100*fem, 19*fem, 101.25*fem, 19*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff03bf9c),
                              borderRadius: BorderRadius.circular(7*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // sendreceiptxKo (6:11909)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.25*fem, 0*fem),
                                  child: Text(
                                    'Send receipt',
                                    style: TextStyle (
                                       fontFamily:  'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.28125*ffem/fem,
                                      letterSpacing: 0.16*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // ionlogowhatsappGbP (6:11910)
                                  width: 17.5*fem,
                                  height: 17.5*fem,
                                  child: Image.asset(
                                    'assets/images/ion-logo-whatsapp-goo.png',
                                    width: 17.5*fem,
                                    height: 17.5*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame128Pvu (7:4382)
                            width: double.infinity,
                            height: 55*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                              borderRadius: BorderRadius.circular(9*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Print receipt',
                                style: TextStyle (
                                   fontFamily:  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4375*ffem/fem,
                                  letterSpacing: 0.16*fem,
                                  color: Color(0xff6a798a),
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
            ],
          ),
        ),
            ),
    );
  }
}