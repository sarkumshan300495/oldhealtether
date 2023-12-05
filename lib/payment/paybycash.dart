
import 'package:flutter/material.dart';
import 'package:healtether_app/payment/payment2.dart';
import 'package:healtether_app/payment/payment3.dart';
import 'package:healtether_app/payment/paymentrecor_list.dart';



class PayOnCash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 300),
       // color: Colors.black,
        width: double.infinity,
        child: Container(
          // paybycashoverlay8aq (4:10794)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
       width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Container(
                // amountpaidbycashjDF (4:10806)
                margin: EdgeInsets.fromLTRB(16*fem, 10*fem, 0*fem, 6*fem),
                child: Text(
                  'Amount Paid by Cash',
                  style: TextStyle (
                  fontFamily: 'Poppins',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5*ffem/fem,
                    letterSpacing: 0.54*fem,
                    color: Color(0xff006270),
                  ),
                ),
              ),
              Container(
                // frame26094121gZ (4:10801)
                margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 19*fem),
                width: double.infinity,
                height: 58*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // amountreceivedjsT (4:10802)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                      child: Text(
                        'Amount Received',
                        style: TextStyle (
                         fontFamily: 'Poppins',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          letterSpacing: 0.54*fem,
                          color: Color(0xff006270),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      // frame153EpD (4:10803)
                      padding: EdgeInsets.fromLTRB(51*fem, 19*fem, 15*fem, 19*fem),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff202741)),
                        borderRadius: BorderRadius.circular(7*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // 9RP (4:10804)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                            child: Text(
                              '200.00',
                              textAlign: TextAlign.right,
                              style: TextStyle (
                               fontFamily: 'Poppins',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 0.9600000381*ffem/fem,
                                letterSpacing: 0.6*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // inrf8q (4:10805)
                            'INR',
                            style: TextStyle (
                         fontFamily: 'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2000000477*ffem/fem,
                              letterSpacing: 0.48*fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame204CPf (6:11923)
                margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                width: double.infinity,
                height: 55*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                     onTap: (){
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Payment3()),
                    );
                              },
                      child: Container(
                        // frame1298YD (6:11924)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 171*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xff03bf9c),
                          borderRadius: BorderRadius.circular(9*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Done',
                            style: TextStyle (
                             fontFamily: 'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.4375*ffem/fem,
                              letterSpacing: 0.16*fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                         onTap: (){
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentRecord()),
                    );},
                      child: Container(
                        // frame128ciH (6:11926)
                        width: 171*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff000000)),
                          borderRadius: BorderRadius.circular(9*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Exit',
                            style: TextStyle (
                          fontFamily: 'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.4375*ffem/fem,
                              letterSpacing: 0.16*fem,
                              color: Color(0xff6a798a),
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