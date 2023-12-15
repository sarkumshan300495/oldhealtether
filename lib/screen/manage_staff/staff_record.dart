import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtether_app/screen/manage_staff/addmember/add_member.dart';
import 'package:healtether_app/screen/manage_staff/staff_details.dart';
import 'package:healtether_app/widgets/bottom_navigation.dart';


class Manage_Staff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
       appBar: AppBar(
          title: const Text(
            'Manage Staff',
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
        bottomNavigationBar: BottomNavigationWidget(),
      body: Container(
        width: double.infinity,
        child: Container(
          // staffrecord6LM (126:4684)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // autogroupw7fbp1T (5vSaUUCUby6ikcoK8ZW7fb)
                width: 460.3*fem,
                height: 129*fem,
              //  color: Colors.black,
                child: Stack(
                  children: [
               
                   
                    Positioned(
                      // frame2609278wfj (126:4712)
                      left: 16*fem,
                      top: 69*fem,
                      child: Container(
                        width: 359*fem,
                        height: 44*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // localnav3yf (126:4713)
                              width: 48*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff00e0c7),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff03b5a1),
                                    offset: Offset(0*fem, 1.5*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'All',
                                  style: TextStyle (
                                     fontFamily:'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: 0.32*fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8*fem,
                            ),
                            Container(
                              // localnavV4y (126:4714)
                              width: 127*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f4fe),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x93a241ee),
                                    offset: Offset(0*fem, 1.5*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Super admin',
                                  style: TextStyle (
                                     fontFamily:'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: 0.32*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8*fem,
                            ),
                            Container(
                              // localnavxDT (126:4715)
                              width: 83*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f4fe),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x93a241ee),
                                    offset: Offset(0*fem, 1.5*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Admins',
                                  style: TextStyle (
                                     fontFamily:'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: 0.32*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8*fem,
                            ),
                            Container(
                              // localnav2UD (126:4716)
                              width: 77*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f4fe),
                                borderRadius: BorderRadius.circular(10*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x93a241ee),
                                    offset: Offset(0*fem, 1.5*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Guests',
                                  style: TextStyle (
                                     fontFamily:'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: 0.32*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // frame153uH7 (126:4717)
                      left: 16*fem,
                      top: 10*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 12*fem, 12*fem),
                        width: 358*fem,
                        height: 42*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff202741)),
                          borderRadius: BorderRadius.circular(12*fem),
                        ),
                        child: Container(
                          // frame2609247BkR (126:4718)
                          padding: EdgeInsets.fromLTRB(2.25*fem, 0*fem, 0*fem, 0*fem),
                          width: 116*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // icbaselinesearchJq3 (126:4719)
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
                                // quicksearchfJD (126:4721)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                child: Text(
                                  'Quick Search',
                                  style: TextStyle (
                                     fontFamily:'Poppins',
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
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupgupuAkm (5vSbq1mwChFTFwCUgfGUpu)
                padding: EdgeInsets.fromLTRB(16*fem, 17*fem, 16*fem, 14*fem),
                width: double.infinity,
            
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup5rjuJ6H (5vSaxHjTPEaivWXHUJ5RJu)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 90*fem),
                      width: double.infinity,
                      height: 353*fem,
                      child: Stack(
                        children: [
                          // Positioned(
                          //   // polygon6dPT (126:4687)
                          //   left: 55*fem,
                          //   top: 2.9999992847*fem,
                          //   child: Align(
                          //     child: SizedBox(
                          //       width: 20*fem,
                          //       height: 20*fem,
                          //       child: Image.asset(
                          //         'assets/images/polygon-6-sA5.png',
                          //         width: 20*fem,
                          //         height: 20*fem,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Positioned(
                            // frame2609373wQ9 (126:4723)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 358*fem,
                              height: 353*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // staffcardfb3 (126:6115)
                                    padding: EdgeInsets.fromLTRB(7.5*fem, 12*fem, 7.5*fem, 13*fem),
                                    width: double.infinity,
                                    height: 115*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xfff9f4fe),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3fbc66ff),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 4.5*fem,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      // staffshortbiokMb (126:6116)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => StaffDetails_Screen()));
                                                    },
                                            child: Container(
                                              // part1h1w (126:6117)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                              width: double.infinity,
                                              height: 50*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // biostaffRTj (126:6118)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                                                    child: Container(
                                                      width: 193*fem,
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            // nameKJD (126:6119)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                            child: Text(
                                                              'Dr. Kim Jones',
                                                              style: TextStyle (
                                                                 fontFamily:'Poppins',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff131313),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // contactno2yK (126:6120)
                                                            '+91 8649 32154',
                                                            style: TextStyle (
                                                               fontFamily:'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.5*ffem/fem,
                                                              color: Color(0xff585858),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // statusbuttonydf (126:6126)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 10*fem),
                                                    width: 121*fem,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration (
                                                      color: Color(0xffbb66ff),
                                                      borderRadius: BorderRadius.circular(8*fem),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Super admin',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle (
                                                           fontFamily:'Poppins',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.125*ffem/fem,
                                                          letterSpacing: -0.16*fem,
                                                          color: Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // part2eUu (126:6122)
                                            width: double.infinity,
                                            height: 24*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // roleBDw (126:6123)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 203*fem, 0*fem),
                                                  child: Text(
                                                    'Doctor',
                                                    style: TextStyle (
                                                       fontFamily:'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff1a1a1a),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // actionsicons4Yd (126:6124)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                                                  padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1.61*fem, 1.5*fem),
                                                  height: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // mailiconxP7 (I126:6124;1630:8183)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 1.21*fem, 13.57*fem, 0*fem),
                                                        width: 20.43*fem,
                                                        height: 16.71*fem,
                                                        child: Image.asset(
                                                          'assets/images/mailicon.png',
                                                          width: 20.43*fem,
                                                          height: 16.71*fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // whatsappicon4h3 (I126:6124;1630:8185)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.75*fem, 0.25*fem),
                                                        width: 19.25*fem,
                                                        height: 19.25*fem,
                                                        child: Image.asset(
                                                          'assets/images/whatsup11.png',
                                                          width: 19.25*fem,
                                                          height: 19.25*fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // deleteiconavH (I126:6124;1630:8187)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                        width: 14.39*fem,
                                                        height: 18.5*fem,
                                                        child: Image.asset(
                                                          'assets/images/deleteicon.png',
                                                          width: 14.39*fem,
                                                          height: 18.5*fem,
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
                                    // staffcardV1f (126:6086)
                                    padding: EdgeInsets.fromLTRB(9*fem, 12*fem, 9*fem, 13*fem),
                                    width: double.infinity,
                                    height: 115*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xfff9f4fe),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3fbc66ff),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 4.5*fem,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      // staffshortbioNr9 (126:6087)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // part1XU9 (126:6088)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                            width: double.infinity,
                                            height: 50*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // biostaffs2D (126:6089)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 0*fem),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom (
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      width: 193*fem,
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            // nameaSR (126:6090)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                            child: Text(
                                                              'Dr. Ajit Bhalla',
                                                              style: TextStyle (
                                                                 fontFamily:'Poppins',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff131313),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // contactnoHbj (126:6091)
                                                            '+91 7896 32154',
                                                            style: TextStyle (
                                                               fontFamily:'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.5*ffem/fem,
                                                              color: Color(0xff585858),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // statusbuttonEG5 (126:6097)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 10*fem),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom (
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      width: 71*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        color: Color(0xff730ac6),
                                                        borderRadius: BorderRadius.circular(8*fem),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Admin',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle (
                                                             fontFamily:'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.125*ffem/fem,
                                                            letterSpacing: -0.16*fem,
                                                            color: Color(0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // part2VSu (126:6093)
                                            width: double.infinity,
                                            height: 24*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // roleeah (126:6094)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 200*fem, 0*fem),
                                                  child: Text(
                                                    'Doctor',
                                                    style: TextStyle (
                                                       fontFamily:'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff1a1a1a),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // actionsiconsmQR (126:6095)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                                                  padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1.61*fem, 1.5*fem),
                                                  height: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // mailicong1b (I126:6095;1630:8183)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 1.21*fem, 13.57*fem, 0*fem),
                                                        width: 20.43*fem,
                                                        height: 16.71*fem,
                                                        child: Image.asset(
                                                          'assets/images/mailicon.png',
                                                          width: 20.43*fem,
                                                          height: 16.71*fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // whatsappiconasf (I126:6095;1630:8185)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.75*fem, 0.25*fem),
                                                        width: 19.25*fem,
                                                        height: 19.25*fem,
                                                        child: Image.asset(
                                                          'assets/images/whatsappicon.png',
                                                          width: 19.25*fem,
                                                          height: 19.25*fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // deleteicon6r1 (I126:6095;1630:8187)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                        width: 14.39*fem,
                                                        height: 18.5*fem,
                                                        child: Image.asset(
                                                          'assets/images/deleteicon-7QH.png',
                                                          width: 14.39*fem,
                                                          height: 18.5*fem,
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
                                    // staffcardPaD (126:6057)
                                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 13*fem),
                                    width: double.infinity,
                                    height: 115*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xfff9f4fe),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3fbc66ff),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 4.5*fem,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      // staffshortbioUbf (126:6058)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // part1dDf (126:6059)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                            width: double.infinity,
                                            height: 50*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // biostaffZND (126:6060)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 184*fem, 0*fem),
                                                  height: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        // nameHp1 (126:6061)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                        child: Text(
                                                          'Rahul Jain',
                                                          style: TextStyle (
                                                             fontFamily:'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff131313),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // contactnooXT (126:6062)
                                                        '+91 8965 32154',
                                                        style: TextStyle (
                                                           fontFamily:'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff585858),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // statusbutton9LR (126:6068)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 10*fem),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom (
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      width: 64*fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration (
                                                        color: Color(0xff730ac6),
                                                        borderRadius: BorderRadius.circular(8*fem),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Guest',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle (
                                                             fontFamily:'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.125*ffem/fem,
                                                            letterSpacing: -0.16*fem,
                                                            color: Color(0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // part2QXF (126:6064)
                                            width: double.infinity,
                                            height: 24*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // role69B (126:6065)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                                                  child: Text(
                                                    'Receptionist',
                                                    style: TextStyle (
                                                       fontFamily:'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff1a1a1a),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // actionsicons1G9 (126:6066)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                                                  padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1.61*fem, 1.5*fem),
                                                  height: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // mailiconvP7 (I126:6066;1630:8183)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 1.21*fem, 13.57*fem, 0*fem),
                                                        width: 20.43*fem,
                                                        height: 16.71*fem,
                                                        child: Image.asset(
                                                          'assets/images/mailicon-K9f.png',
                                                          width: 20.43*fem,
                                                          height: 16.71*fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // whatsappiconEeh (I126:6066;1630:8185)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.75*fem, 0.25*fem),
                                                        width: 19.25*fem,
                                                        height: 19.25*fem,
                                                        child: Image.asset(
                                                          'assets/images/whatsappicon-6B7.png',
                                                          width: 19.25*fem,
                                                          height: 19.25*fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        // deleteiconxah (I126:6066;1630:8187)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                        width: 14.39*fem,
                                                        height: 18.5*fem,
                                                        child: Image.asset(
                                                          'assets/images/deleteicon.png',
                                                          width: 14.39*fem,
                                                          height: 18.5*fem,
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      // buttonsUow (126:4722)
                      onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Add_MemberScreen()));
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(124*fem, 19*fem, 124*fem, 19*fem),
                        width: double.infinity,
                        height: 59*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff03bf9c),
                          borderRadius: BorderRadius.circular(7*fem),
                        ),
                        child: Container(
                          // autogroupnlpfzXP (5vSciKdn1NDxkFVTMqNLPF)
                          width: double.infinity,
                          height: double.infinity,
                          child: Center(
                            child: Text(
                              'Add member',
                              style: TextStyle (
                                 fontFamily:'Poppins',
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