import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import 'package:healtether_app/payment/paymentrecord_info.dart';
import 'package:healtether_app/widgets/bottom_navigation.dart';



class PaymentRecord extends StatelessWidget {
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
          'Payments Records',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
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
      ),
      bottomNavigationBar: BottomNavigationWidget(),
      body: Container(
        width: double.infinity,
        child: Container(
          // paymentsrecordlistEtd (4:10824)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                // autogroupufedhBs (NUzBin2srv8HEvRScUuFEd)
                padding: EdgeInsets.fromLTRB(16*fem, 18*fem, 16*fem, 14*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogrouphmuwDAD (NUzBXx1ayG9Y7FY2bkHMuw)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame153kA9 (4:10858)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 12*fem, 12*fem),
                            width: 309*fem,
                            height: 42*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff202741)),
                              borderRadius: BorderRadius.circular(12*fem),
                            ),
                            child: Container(
                              // frame26092472dT (4:10859)
                              padding: EdgeInsets.fromLTRB(2.25*fem, 0*fem, 0*fem, 0*fem),
                              width: 108*fem,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // icbaselinesearchM9w (4:10860)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.63*fem, 0.38*fem),
                                    width: 13.12*fem,
                                    height: 13.12*fem,
                                    child: Image.asset(
                                      'assets/images/search.png',
                                      width: 13.12*fem,
                                      height: 13.12*fem,
                                    ),
                                  ),
                                  Container(
                                    // quicksearchG21 (4:10862)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                    child: Text(
                                      'Quick Search',
                                      style: TextStyle (
                                     fontFamily:   'Arimo',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1999999455*ffem/fem,
                                        letterSpacing: 0.28*fem,
                                        color: Color(0xff6a798a),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // frame531ySD (4:10855)
                            width: 42*fem,
                            height: 44*fem,
                            child: Image.asset(
                              'assets/images/settingsicon.png',
                              width: 42*fem,
                              height: 44*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // all3paymentrecordsarelisteduqf (4:10863)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                      child: Text(
                        'All 3 Payment records are listed',
                        style: TextStyle (
                       fontFamily:   'Arimo',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          letterSpacing: 0.24*fem,
                          color: Color(0xff979797),
                        ),
                      ),
                    ),
                    Container(
                      // frame260926629b (4:10829)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 297*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // paymentinfocardAFo (4:10830)
                            padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 14.5*fem, 8*fem),
                            width: double.infinity,
                            height: 82*fem,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f4fe),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Container(
                              // frame385V3B (I4:10830;4:10933)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame333qMw (I4:10830;4:10934)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94*fem, 0*fem),
                                    width: 134*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame2609498xxM (I4:10830;4:10935)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // rameshpateltr1 (I4:10830;4:10936)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                child: Text(
                                                  'Ramesh Patel',
                                                  style: TextStyle (
                                                    fontFamily:'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.0666667091*ffem/fem,
                                                    letterSpacing: 0.18*fem,
                                                    color: Color(0xff006270),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // QpM (I4:10830;4:10937)
                                                '+91 869 523145',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1999999455*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame2609499MUh (I4:10830;4:10938)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                // lastvisitedW6h (I4:10830;4:10939)
                                                'Last visited',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.24*fem,
                                                  color: Color(0xffaaaaaa),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4*fem,
                                              ),
                                              Text(
                                                // RDf (I4:10830;4:10940)
                                                ':',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.24*fem,
                                                  color: Color(0xff5c5c5c),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4*fem,
                                              ),
                                              Text(
                                                // who (I4:10830;4:10941)
                                                '15-07-23',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.12*fem,
                                                  color: Color(0xff5c5c5c),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame26095005Z7 (I4:10830;4:10943)
                                    margin: EdgeInsets.fromLTRB(0*fem, 7.5*fem, 0*fem, 7.5*fem),
                                    width: 99*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // paymentstatuspFo (I4:10830;4:10944)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            'Payment Status',
                                            style: TextStyle (
                                              fontFamily:'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3999999364*ffem/fem,
                                              letterSpacing: 0.24*fem,
                                              color: Color(0xff5c5c5c),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // paymentstatusXg1 (I4:10830;4:10945)
                                          margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 9*fem, 0*fem),
                                          width: double.infinity,
                                          height: 30*fem,
                                          decoration: BoxDecoration (
                                            border: Border.all(color: Color(0xffec1e1e)),
                                            color: Color(0x19ec1e1e),
                                            borderRadius: BorderRadius.circular(8*fem),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Pending',
                                              textAlign: TextAlign.center,
                                              style: TextStyle (
                                                fontFamily:'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2000000477*ffem/fem,
                                                color: Color(0xffec1e1e),
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
                          SizedBox(
                            height: 4*fem,
                          ),
                          InkWell(
                            onTap: (){
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentRecord_Info()),
                    );
                              },
                            child: Container(
                              // paymentinfocardbA5 (4:10831)
                              padding: EdgeInsets.fromLTRB(8*fem, 8.4*fem, 0*fem, 8.4*fem),
                              width: 486*fem,
                              height: 82*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f4fe),
                                borderRadius: BorderRadius.circular(8*fem),
                              ),
                              child: Container(
                                // frame333iVb (I4:10831;4:10934)
                                width: double.infinity,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // frame2609498UUm (I4:10831;4:10935)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Container(
                                        width: 478*fem,
                                        height: 40.2*fem,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // rameshpatelQNR (I4:10831;4:10936)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.2*fem),
                                              child: Text(
                                                'Hubert Blaine Wolfeschlegelsteinhausenbergerdorff',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.0666667091*ffem/fem,
                                                  letterSpacing: 0.18*fem,
                                                  color: Color(0xff006270),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // ie1 (I4:10831;4:10937)
                                              '+91 9658 562314',
                                              style: TextStyle (
                                                fontFamily:'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1999999455*ffem/fem,
                                                letterSpacing: 0.14*fem,
                                                color: Color(0xff585858),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // frame26094994C5 (I4:10831;4:10938)
                                      left: 0*fem,
                                      top: 48.1999511719*fem,
                                      child: Container(
                                        width: 134*fem,
                                        height: 17*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              // lastvisitedPEM (I4:10831;4:10939)
                                              'Last visited',
                                              style: TextStyle (
                                                fontFamily:'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3999999364*ffem/fem,
                                                letterSpacing: 0.24*fem,
                                                color: Color(0xffaaaaaa),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4*fem,
                                            ),
                                            Text(
                                              // iGd (I4:10831;4:10940)
                                              ':',
                                              style: TextStyle (
                                                fontFamily:'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3999999364*ffem/fem,
                                                letterSpacing: 0.24*fem,
                                                color: Color(0xff5c5c5c),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4*fem,
                                            ),
                                            Text(
                                              // FGZ (I4:10831;4:10941)
                                              '01-07-23',
                                              style: TextStyle (
                                                fontFamily:'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3999999364*ffem/fem,
                                                letterSpacing: 0.12*fem,
                                                color: Color(0xff5c5c5c),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // frame2609500Pdf (I4:10831;4:10943)
                                      left: 235*fem,
                                      top: 7.0999755859*fem,
                                      child: Container(
                                        width: 101*fem,
                                        height: 51*fem,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // paymentstatusKXK (I4:10831;4:10944)
                                              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 4*fem),
                                              child: Text(
                                                'Payment Status',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.24*fem,
                                                  color: Color(0xff5c5c5c),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // paymentstatusEuB (I4:10831;4:10945)
                                              width: double.infinity,
                                              height: 30*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xff26bf00)),
                                                color: Color(0x1926bf00),
                                                borderRadius: BorderRadius.circular(8*fem),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Completed',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle (
                                                    fontFamily:'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.2000000477*ffem/fem,
                                                    color: Color(0xff26bf00),
                                                  ),
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
                            ),
                          ),
                          SizedBox(
                            height: 4*fem,
                          ),
                          Container(
                            // paymentinfocardK9w (4:10832)
                            padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 14.5*fem, 8*fem),
                            width: double.infinity,
                            height: 82*fem,
                            decoration: BoxDecoration (
                              color: Color(0xfff9f4fe),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Container(
                              // frame385Ryf (I4:10832;4:10933)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame333nZK (I4:10832;4:10934)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 0*fem),
                                    width: 138*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame26094987rV (I4:10832;4:10935)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // rameshpatelGDb (I4:10832;4:10936)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                child: Text(
                                                  'Jane Downs',
                                                  style: TextStyle (
                                                    fontFamily:'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.0666667091*ffem/fem,
                                                    letterSpacing: 0.18*fem,
                                                    color: Color(0xff006270),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // ydo (I4:10832;4:10937)
                                                '+91 7869 523145',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1999999455*ffem/fem,
                                                  letterSpacing: 0.14*fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame26094996yK (I4:10832;4:10938)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                // lastvisitedejw (I4:10832;4:10939)
                                                'Last visited',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.24*fem,
                                                  color: Color(0xffaaaaaa),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4*fem,
                                              ),
                                              Text(
                                                // NA9 (I4:10832;4:10940)
                                                ':',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.24*fem,
                                                  color: Color(0xff5c5c5c),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4*fem,
                                              ),
                                              Text(
                                                // J3o (I4:10832;4:10941)
                                                '30-05-23',
                                                style: TextStyle (
                                                  fontFamily:'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.3999999364*ffem/fem,
                                                  letterSpacing: 0.12*fem,
                                                  color: Color(0xff5c5c5c),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame2609500Ru7 (I4:10832;4:10943)
                                    margin: EdgeInsets.fromLTRB(0*fem, 7.5*fem, 0*fem, 7.5*fem),
                                    width: 99*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // paymentstatusN3f (I4:10832;4:10944)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            'Payment Status',
                                            style: TextStyle (
                                              fontFamily:'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3999999364*ffem/fem,
                                              letterSpacing: 0.24*fem,
                                              color: Color(0xff5c5c5c),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // paymentstatusHgR (I4:10832;4:10945)
                                          margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 9*fem, 0*fem),
                                          width: double.infinity,
                                          height: 30*fem,
                                          decoration: BoxDecoration (
                                            border: Border.all(color: Color(0xffec1e1e)),
                                            color: Color(0x19ec1e1e),
                                            borderRadius: BorderRadius.circular(8*fem),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Pending',
                                              textAlign: TextAlign.center,
                                              style: TextStyle (
                                                fontFamily:'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2000000477*ffem/fem,
                                                color: Color(0xffec1e1e),
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