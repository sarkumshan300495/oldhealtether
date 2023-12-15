import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtether_app/widgets/bottom_navigation.dart';


class PaymentRecord_Info extends StatelessWidget {
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
          // paymentsrecordinfoM57 (4:10865)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                // autogroupksa1ACu (NUzE1YYzCNnR11CW9oKSA1)
                padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 117*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame26094836cM (4:10893)
                      padding: EdgeInsets.fromLTRB(24*fem, 16*fem, 23*fem, 16*fem),
                      width: double.infinity,
                      height: 307*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(15*fem),
                      ),
                      child: Container(
                        // frame2609485SAR (4:10894)
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame2609483miV (4:10895)
                              width: 310*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // frame260947183F (4:10896)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    width: 155*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame2609495enH (4:10897)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // rameshpatelzbF (4:10898)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                child: Text(
                                                  'Ramesh Patel ',
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.325*ffem/fem,
                                                    color: Color(0xff006270),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // 7A5 (4:10899)
                                                '+91 8649 32154',
                                                style: TextStyle (
                                                fontFamily:  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame260946945K (4:10900)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // lastvisited1WM (4:10901)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                                child: Text(
                                                  'Last Visited',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.7142857143*ffem/fem,
                                                    color: Color(0xffaaaaaa),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // XDo (4:10902)
                                                ': ',
                                                style: TextStyle (
                                                fontFamily:  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.7142857143*ffem/fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                              Text(
                                                // fL1 (4:10903)
                                                '15-07-23',
                                                textAlign: TextAlign.center,
                                                style: TextStyle (
                                                fontFamily:  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.7142857143*ffem/fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // paymentstatusoSD (4:10904)
                                    width: double.infinity,
                                    height: 35*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xffec1e1e)),
                                      color: Color(0xfff8dfe8),
                                      borderRadius: BorderRadius.circular(8*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Pending',
                                        textAlign: TextAlign.center,
                                        style: TextStyle (
                                        fontFamily:  'Poppins',
                                          fontSize: 16*ffem,
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
                            SizedBox(
                              height: 16*fem,
                            ),
                            SizedBox(
                              height: 16*fem,
                            ),
                            Container(
                              // paymentinfo47F (4:10906)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.5*fem, 0*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame2609475bN5 (4:10907)
                                    width: double.infinity,
                                    height: 27*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupamgh8so (NUzETcdt21M5iE5877AMgH)
                                          padding: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 80*fem, 1.5*fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // totalfeeGDK (4:10908)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                                                child: Text(
                                                  'Total Fee',
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.7142857143*ffem/fem,
                                                    color: Color(0xff006270),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // ytR (4:10909)
                                                ': ',
                                                style: TextStyle (
                                                fontFamily:    'Arimo',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame2609472vHs (4:10910)
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // Gcd (4:10911)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                                                child: Text(
                                                  '556.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.54*fem,
                                                    color: Color(0xff616161),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // inratD (4:10912)
                                                'INR',
                                                textAlign: TextAlign.center,
                                                style: TextStyle (
                                                fontFamily:  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.42*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8*fem,
                                  ),
                                  Container(
                                    // frame2609476iUd (4:10913)
                                    width: double.infinity,
                                    height: 27*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupfsbwUCu (NUzEf7JjBLFHbCX9WCFSBw)
                                          padding: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 81*fem, 1.5*fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // amtreceivedCub (4:10914)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                                                child: Text(
                                                  'Amt Received',
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.7142857143*ffem/fem,
                                                    color: Color(0xff006270),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // 82Z (4:10915)
                                                ': ',
                                                style: TextStyle (
                                                fontFamily:    'Arimo',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame2609473GuT (4:10916)
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // Dph (4:10917)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                                                child: Text(
                                                  '200.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.54*fem,
                                                    color: Color(0xff616161),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // inr9CZ (4:10918)
                                                'INR',
                                                textAlign: TextAlign.center,
                                                style: TextStyle (
                                                fontFamily:  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.42*fem,
                                                  color: Color(0xff202741),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8*fem,
                                  ),
                                  Container(
                                    // frame26094774qK (4:10919)
                                    width: double.infinity,
                                    height: 27*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupywxvRA5 (NUzErBpbvN55W7F3HZYWxV)
                                          padding: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 78*fem, 1.5*fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // balanceamtky3 (4:10920)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                                child: Text(
                                                  'Balance Amt',
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.7142857143*ffem/fem,
                                                    color: Color(0xff006270),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // g61 (4:10921)
                                                ': ',
                                                style: TextStyle (
                                                fontFamily:    'Arimo',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff585858),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame26094742Qm (4:10922)
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // BoT (4:10923)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                                                child: Text(
                                                  '356.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle (
                                                  fontFamily:  'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.54*fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // inr6vR (4:10924)
                                                'INR',
                                                textAlign: TextAlign.center,
                                                style: TextStyle (
                                                fontFamily:  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.42*fem,
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
                    ),
                    Container(
                      // frame2609505sph (8:4395)
                      margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 11*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame2609504zeR (8:4385)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame128XuF (8:4390)
                                  width: double.infinity,
                                  height: 55*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff000000)),
                                    borderRadius: BorderRadius.circular(9*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'View receipt',
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
                                SizedBox(
                                  height: 14*fem,
                                ),
                                Container(
                                  // frame2609436QTF (8:4392)
                                  width: double.infinity,
                                  height: 55*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff000000)),
                                    borderRadius: BorderRadius.circular(9*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Pay by cash',
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
                                SizedBox(
                                  height: 14*fem,
                                ),
                                Container(
                                  // frame2609435tNR (8:4386)
                                  padding: EdgeInsets.fromLTRB(74*fem, 19*fem, 75.25*fem, 19*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff03bf9c),
                                    borderRadius: BorderRadius.circular(7*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // sendpaymentlinknTo (8:4387)
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
                                        // ionlogowhatsapph4y (8:4388)
                                        width: 17.5*fem,
                                        height: 17.5*fem,
                                        child: Image.asset(
                                          'assets/images/ion-logo-whatsapp-8Mj.png',
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
              
            ],
          ),
        ),
            ),
    );
  }
}