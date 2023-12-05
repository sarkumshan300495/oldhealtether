import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtether_app/payment/paybycash.dart';
import 'package:healtether_app/payment/payment3.dart';


class Payment_Screen2 extends StatelessWidget {
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
          // payments11Qk5 (4:10650)
          width: double.infinity,
            height: 719*fem,
          decoration: BoxDecoration (
          color: Color(0xffffffff),
          
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              Container(
                // autogroupwvzmTNu (NUz3XRrbN55S8nhy4DwVzM)
                padding: EdgeInsets.fromLTRB(16*fem, 9*fem, 15*fem, 17*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame2609433nAH (4:10679)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 109*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame2609432Wc5 (4:10680)
                            width: 358*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame2609419eiH (4:10681)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                  width: double.infinity,
                                  height: 30*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame2609418npV (4:10682)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 126*fem, 0*fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // invoicevfo (4:10683)
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
                                              // EgV (4:10684)
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
                                        // july2023Nnh (4:10685)
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
                                  // frame2609420i5s (4:10686)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // patient3tq (4:10687)
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
                                        // rameshpatelmZw (4:10688)
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
                            // frame2609431iEH (4:10689)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame2609427ffK (4:10690)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                  padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 12*fem),
                                  width: double.infinity,
                               
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // itemspriceNZj (4:10691)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // itemsinfoJTP (I4:10691;4:10957)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 27*fem),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // treatmentse1T (I4:10691;4:10958)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.5*fem, 0*fem),
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
                                                    // qtyk4V (I4:10691;4:10959)
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
                                              // taxsuo (I4:10691;4:10960)
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
                                              // amtP7T (I4:10691;4:10961)
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
                                        // frame2609426vdB (4:10692)
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // itemsprice61s (4:10693)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              width: double.infinity,
                                              height: 24*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // itemsinfoQoF (I4:10693;4:10957)
                                                  
                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.5*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // treatmentsx45 (I4:10693;4:10958)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.5*fem, 0*fem),
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
                                                          // qtyU2R (I4:10693;4:10959)
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
                                                    // taxDEu (I4:10693;4:10960)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
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
                                                    // amtKYq (I4:10693;4:10961)
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
                                              // itemspriceGU5 (4:10694)
                                              width: double.infinity,
                                              height: 24*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // itemsinfoRLy (I4:10694;4:10957)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.5*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          
                                                          // treatmentsm9w (I4:10694;4:10958)
                                                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.5*fem, 0*fem),
                                                        //  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.5*fem, 0*fem),
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
                                                          // qtygXo (I4:10694;4:10959)
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
                                                    // tax2rZ (I4:10694;4:10960)
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
                                                    // amtYpu (I4:10694;4:10961)
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
                                  // frame2609425Vk9 (4:10695)
                                  width: 358*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame2609422TBB (4:10696)
                                        padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 12*fem),
                                        width: double.infinity,
                                       
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // itemspriceyQR (4:10697)
                                              width: double.infinity,
                                              height: 27*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemsinfoKUH (4:10698)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // totalamtrUD (4:10699)
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
                                                          // 67f (4:10700)
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
                                                    // EUm (4:10701)
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
                                                    // inrxQm (4:10702)
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
                                              // itemspricetZK (4:10703)
                                              width: double.infinity,
                                              height: 27*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemsinfoSKw (4:10704)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // totaltaxNDb (4:10705)
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
                                                          // 69b (4:10706)
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
                                                    // RxZ (4:10707)
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
                                                    // inrkV3 (4:10708)
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
                                              // itemsprice51X (4:10709)
                                              width: double.infinity,
                                              height: 27*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemsinfo1vm (4:10710)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // totalcostZSV (4:10711)
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
                                                          // g1K (4:10712)
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
                                                    // 25B (4:10713)
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
                                                    // inrwhw (4:10714)
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
                                              // itemspriceUC5 (4:10715)
                                              width: double.infinity,
                                              height: 27*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // itemsinfo2Db (4:10716)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 97*fem, 0*fem),
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // discount10Aqb (4:10717)
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
                                                          // HfK (4:10718)
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
                                                    // SHK (4:10719)
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
                                                    // inrMv5 (4:10720)
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
                                        // paymentinfotv1 (4:10721)
                                        width: double.infinity,
                                        height: 70*fem,
                                        child: Container(
                                          // totalamountfA5 (I4:10721;4:10964)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 8*fem),
                                          width: double.infinity,
                                          height: 66*fem,
                                        
                                          child: Container(
                                            // itemspriceanq (I4:10721;4:10965)
                                            width: double.infinity,
                                            height: 30*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // itemsinfoLX7 (I4:10721;4:10966)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                                                  height: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        // grandtotalHBT (I4:10721;4:10967)
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
                                                        // Q1B (I4:10721;4:10968)
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
                                                  // k53 (I4:10721;4:10969)
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
                                                  // inrGJH (I4:10721;4:10970)
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
                      // frame2609503brM (4:11811)
                      margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 15*fem, 0*fem),
               
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                             onTap: (){
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PayOnCash()),
                    );
                              },
                            child: Container(
                              // frame357YFo (4:11804)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              width: double.infinity,
                              height: 59*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff03bf9c),
                                borderRadius: BorderRadius.circular(7*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Pay by cash',
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
                            ),
                          ),
                          Container(
                            // frame2609434DMw (4:11809)
                            padding: EdgeInsets.fromLTRB(74*fem, 19*fem, 75.25*fem, 0*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff03bf9c),
                              borderRadius: BorderRadius.circular(7*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // sendpaymentlinkj5P (4:11810)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.25*fem, 0*fem),
                                  child: Text(
                                    'Send payment link',
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
                                  // ionlogowhatsappdwT (4:11812)
                                  width: 17.5*fem,
                                  height: 17.5*fem,
                                  child: Image.asset(
                                    'assets/images/ion-logo-whatsapp-FNm-cUD.png',
                                    width: 17.5*fem,
                                    height: 17.5*fem,
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
    );
  }
}