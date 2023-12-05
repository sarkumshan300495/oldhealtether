import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtether_app/Patient_record.dart';

import 'dart:ui';

import 'package:healtether_app/add_appointment.dart';
import 'package:healtether_app/chat.dart';
import 'package:healtether_app/notification.dart';
import 'package:healtether_app/widgets/past_appointment/appoinment_schedula.dart';
import 'package:healtether_app/widgets/schedule_appointment/appointment.dart';
import 'package:healtether_app/payment/payment.dart';
import 'package:healtether_app/screen/manage_staff/manage_staff.dart';
import 'package:healtether_app/widgets/Drawer/appointment_analysis.dart';
import 'package:healtether_app/widgets/Drawer/feedback.dart';
import 'package:healtether_app/widgets/Drawer/patient_analysis.dart';
import 'package:healtether_app/widgets/Drawer/payment_analysis.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  static const String rountName = "/";
  static routes() {}

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  void pageState() {
    if (_page == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else if (_page == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => appointment()));
    } else if (_page == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => chat()));
    } else if (_page == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => notification()));
    }
  }

  _launchURL() async {
    // const url = 'https://www.healtether.com/';
    /*if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }*/

    // try {
    //   launch(url);
    // } on PlatformException catch (e) {
    //   launch(url);
    // } finally {
    //   launch(url);
    // }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: Container(
              width: 150,
              height: 50,
              child: Image.asset(
                "assets/title.png",
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00E0C7),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        
        showSelectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_home.png',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/uis_schedule.png',
            ),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ion_logo-whatsapp.png',
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_notifications.png',
            ),
            label: 'Notifications',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            pageState();
          });
        },
      ),
      body: Container(
        width: double.infinity,
        // height: MediaQuery.of(context).size.height,
        child: Container(
          // homeuDw (1:3614)
          width: double.infinity,
          decoration: BoxDecoration(
            //border: Border.all(color: Color(0xff000000)),
            color: Color(0xffffffff),
            // borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group36442sM7 (1:3616)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 11 * fem),
                width: double.infinity,
                height: 646 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // frame441QM3 (1:3617)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            27 * fem, 14 * fem, 28 * fem, 114 * fem),
                        width: 390 * fem,
                        height: 347 * fem,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0, -1),
                            end: Alignment(0, 1.043),
                            colors: <Color>[
                              Color(0xff00796b),
                              Color(0xff03bf9c),
                              Color(0x0003bf9c)
                            ],
                            stops: <double>[0.118, 0.362, 1],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30 * fem),
                            topRight: Radius.circular(30 * fem),
                            bottomRight: Radius.circular(90 * fem),
                            bottomLeft: Radius.circular(90 * fem),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame409CXo (1:3631)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 17 * fem),
                              width: double.infinity,
                              height: 38 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame408jXj (1:3632)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 212 * fem, 0 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // saturdayfgH (1:3633)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 4 * fem),
                                          child: Text(
                                            'Saturday',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.3900000254 * ffem / fem,
                                              letterSpacing: 0.12 * fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // july2023Nah (1:3634)
                                          '1 July, 2023',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.3900000254 * ffem / fem,
                                            letterSpacing: 0.12 * fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // uKj (1:3635)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      '12:30',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3900000254 * ffem / fem,
                                        letterSpacing: -0.24 * fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // drajitbhallaR3B (1:3636)
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 19 * fem),
                              child: Text(
                                'Dr. Ajit Bhalla',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 32 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3899999857 * ffem / fem,
                                  letterSpacing: -0.32 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // frame428jJm (1:3618)
                              margin: EdgeInsets.fromLTRB(
                                  27 * fem, 0 * fem, 52 * fem, 0 * fem),
                              width: double.infinity,
                              height: 100 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group36377reH (1:3619)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 32 * fem, 0 * fem),
                                    width: 100 * fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // group36376bLy (1:3620)
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Container(
                                            width: 100 * fem,
                                            height: 100 * fem,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xffffffff)),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      50 * fem),
                                            ),
                                            child: Center(
                                              child: SizedBox(
                                                width: 100 * fem,
                                                height: 100 * fem,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 65, 0, 90),
                                                  strokeWidth: 6,
                                                  value: .3,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // ongoing410qm7 (1:3623)
                                          left: 27 * fem,
                                          top: 28 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 45 * fem,
                                              height: 40 * fem,
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5349999666 *
                                                        ffem /
                                                        fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: 'Ongoing\n',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10 * ffem,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 1.5349999428 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing:
                                                            0.15 * fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '4/10',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame3471Sd (1:3624)
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // appointmentstatusZj3 (1:3625)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 13 * fem),
                                          child: Text(
                                            'Appointment status',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.3900000254 * ffem / fem,
                                              letterSpacing: 0.18 * fem,
                                              color: Color(0xff1e1e36),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame336GdT (1:3626)
                                          width: 96 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // autogroup2fr5pQ5 (NUxY32UA1Y9jzkPdWB2Fr5)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    3 * fem,
                                                    10 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // rectangle1213wzV (1:3627)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              7 * fem,
                                                              0 * fem),
                                                      width: 20 * fem,
                                                      height: 20 * fem,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                        color:
                                                            Color(0xffffffff),
                                                      ),
                                                    ),
                                                    Text(
                                                      // remainingf9o (1:3628)
                                                      'Remaining',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3900000254 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing:
                                                            0.06 * fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroupdqdbPrV (NUxY8GpQtSukNkwgfTDQDB)
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // rectangle1214w7K (1:3629)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              7 * fem,
                                                              0 * fem),
                                                      width: 20 * fem,
                                                      height: 20 * fem,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                        color:
                                                            Color(0xff730ac6),
                                                      ),
                                                    ),
                                                    Text(
                                                      // completedrVB (1:3630)
                                                      'Completed',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3900000254 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing:
                                                            0.06 * fem,
                                                        color:
                                                            Color(0xff000000),
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
                    Positioned(
                      // frame350Pk1 (1:3637)
                      left: 27 * fem,
                      top: 260 * fem,
                      child: Container(
                        width: 336 * fem,
                        height: 386 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroups1tsKNm (NUxYSM8dU2Qt8M4yzXS1Ts)
                              width: double.infinity,
                              height: 118 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame320G37 (1:3638)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  patient_record()),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(12.5 * fem,
                                            14 * fem, 12.5 * fem, 14 * fem),
                                        width: 160 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(8 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x9100796b),
                                              offset: Offset(2 * fem, 2 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                            BoxShadow(
                                              color: Color(0x89005a50),
                                              offset: Offset(1 * fem, 3 * fem),
                                              blurRadius: 4.5 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          // frame419TtH (1:3639)
                                          width: double.infinity,
                                          height: 75 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame496cWH (1:3640)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    2 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    2.33 * fem,
                                                    0 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // patientsrecord8jX (1:3641)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              41.5 * fem,
                                                              0 * fem),
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 69 * fem,
                                                      ),
                                                      child: Text(
                                                        'Patients \nRecord',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.3899999857 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // materialsymbolspatientlistroun (1:3642)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              1 * fem),
                                                      width: 22.17 * fem,
                                                      height: 18.67 * fem,
                                                      child: Image.asset(
                                                        'assets/images/patientsrecord.png',
                                                        width: 22.17 * fem,
                                                        height: 18.67 * fem,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // maintainandmanagepatientrecord (1:3644)
                                                constraints: BoxConstraints(
                                                  maxWidth: 112 * fem,
                                                ),
                                                child: Text(
                                                  'Maintain and manage Patient record',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3899999619 *
                                                        ffem /
                                                        fem,
                                                    fontStyle: FontStyle.italic,
                                                    color: Color(0xff979797),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    // frame3214Fo (1:3645)
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Past_Appointment(),
                                        ),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(12.51 * fem,
                                          14 * fem, 12.51 * fem, 28 * fem),
                                      width: 160 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x9100796b),
                                            offset: Offset(2 * fem, 2 * fem),
                                            blurRadius: 2 * fem,
                                          ),
                                          BoxShadow(
                                            color: Color(0x89005a50),
                                            offset: Offset(1 * fem, 3 * fem),
                                            blurRadius: 4.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        // frame418KhX (1:3646)
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame547sj3 (1:3648)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  3 * fem),
                                              width: double.infinity,
                                              height: 45 * fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // pastappointmentsQU5 (1:3649)
                                                    left: 0 * fem,
                                                    top: 0 * fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 114 * fem,
                                                        height: 45 * fem,
                                                        child: Text(
                                                          'Past appointments',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height:
                                                                1.3899999857 *
                                                                    ffem /
                                                                    fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // frame546JpM (1:3650)
                                                    left: 111 * fem,
                                                    top: 0 * fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 23.98 * fem,
                                                        height: 25.25 * fem,
                                                        child: Image.asset(
                                                          'assets/images/pastappointmenthome.png',
                                                          width: 23.98 * fem,
                                                          height: 25.25 * fem,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // recordofpastappointmentsDgR (1:3655)
                                              constraints: BoxConstraints(
                                                maxWidth: 74 * fem,
                                              ),
                                              child: Text(
                                                'Record of past appointments.',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      1.3899999619 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color: Color(0xff979797),
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
                            SizedBox(
                              height: 16 * fem,
                            ),
                            Container(
                              // autogroupmqxhidB (NUxYhkrcxvEAtiwqnBmqxh)
                              width: double.infinity,
                              height: 118 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame322Tqf (1:3656)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                manage_staff(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(12 * fem,
                                            14 * fem, 12 * fem, 28 * fem),
                                        width: 160 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(8 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x9100796b),
                                              offset: Offset(2 * fem, 2 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                            BoxShadow(
                                              color: Color(0x89005a50),
                                              offset: Offset(1 * fem, 3 * fem),
                                              blurRadius: 4.5 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          // frame423K7B (1:3657)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame495fB3 (1:3658)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    3 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0.58 * fem,
                                                    0 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // managestaffyhX (1:3659)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              37.41 * fem,
                                                              0 * fem),
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 71 * fem,
                                                      ),
                                                      child: Text(
                                                        'Manage \nStaff',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.3899999857 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // medicaliconicarestaffareasnu (1:3660)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              1.14 * fem),
                                                      width: 27.01 * fem,
                                                      height: 27.41 * fem,
                                                      child: Image.asset(
                                                        'assets/images/managestaffhome.png',
                                                        width: 27.01 * fem,
                                                        height: 27.41 * fem,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // manageandmaintainstaffrecordsn (1:3663)
                                                constraints: BoxConstraints(
                                                  maxWidth: 112 * fem,
                                                ),
                                                child: Text(
                                                  'Manage and maintain staff records.',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3899999619 *
                                                        ffem /
                                                        fem,
                                                    fontStyle: FontStyle.italic,
                                                    color: Color(0xff979797),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame323Hbj (1:3664)
                                    padding: EdgeInsets.fromLTRB(
                                        15 * fem, 14 * fem, 16 * fem, 14 * fem),
                                    width: 160 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(8 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x9100796b),
                                          offset: Offset(2 * fem, 2 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                        BoxShadow(
                                          color: Color(0x89005a50),
                                          offset: Offset(1 * fem, 3 * fem),
                                          blurRadius: 4.5 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      // frame4219P3 (1:3665)
                                      width: double.infinity,
                                      height: 46 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // frame545tbX (1:3666)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 4 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                0 * fem,
                                                2.33 * fem,
                                                2.33 * fem,
                                                2 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // clinicsoiV (1:3667)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0.67 * fem,
                                                      50.33 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Clinics',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.3899999857 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // materialsymbolsscheduleoutline (1:3668)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.33 * fem),
                                                  width: 23.33 * fem,
                                                  height: 23.33 * fem,
                                                  child: Image.asset(
                                                    'assets/images/clinichome.png',
                                                    width: 23.33 * fem,
                                                    height: 23.33 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            // detailsofclinicsSWZ (1:3670)
                                            'Details of Clinics ',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 10 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3899999619 * ffem / fem,
                                              fontStyle: FontStyle.italic,
                                              color: Color(0xff979797),
                                            ),
                                          ),
                                        ],
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
                              // autogroupevgzmHw (NUxYxVw4C97zuoG6BVeVGZ)
                              width: double.infinity,
                              height: 118 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Payment_Screen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      // frame3247Mo (1:3671)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(11.5 * fem,
                                          14 * fem, 11.5 * fem, 28 * fem),
                                      width: 160 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x9100796b),
                                            offset: Offset(2 * fem, 2 * fem),
                                            blurRadius: 2 * fem,
                                          ),
                                          BoxShadow(
                                            color: Color(0x89005a50),
                                            offset: Offset(1 * fem, 3 * fem),
                                            blurRadius: 4.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        // frame422BcZ (1:3672)
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame498je5 (1:3673)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  3 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0.89 * fem,
                                                  0 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // paymentsrecord4RT (1:3674)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        32.89 * fem,
                                                        0 * fem),
                                                    constraints: BoxConstraints(
                                                      maxWidth: 80 * fem,
                                                    ),
                                                    child: Text(
                                                      'Payments Record',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3899999857 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // streamlinemoneywalletmoneypaym (1:3675)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.9 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    width: 23.21 * fem,
                                                    height: 23.21 * fem,
                                                    child: Image.asset(
                                                      'assets/images/paymentrecordshome.png',
                                                      width: 23.21 * fem,
                                                      height: 23.21 * fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // recordofpaymentsreceivedTTb (1:3679)
                                              constraints: BoxConstraints(
                                                maxWidth: 102 * fem,
                                              ),
                                              child: Text(
                                                'Record of payments received.',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      1.3899999619 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color: Color(0xff979797),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame325ZFj (1:3680)
                                    width: 160 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(8 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x9100796b),
                                          offset: Offset(2 * fem, 2 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                        BoxShadow(
                                          color: Color(0x89005a50),
                                          offset: Offset(1 * fem, 3 * fem),
                                          blurRadius: 4.5 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // frame420eHB (1:3681)
                                          left: 12 * fem,
                                          top: 14 * fem,
                                          child: Container(
                                            width: 136 * fem,
                                            height: 76 * fem,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // frame497Zuw (1:3682)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      3 * fem),
                                                  padding: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      2.82 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // digitalprescriptionsthK (1:3683)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                7.33 * fem,
                                                                0 * fem),
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 103 * fem,
                                                        ),
                                                        child: Text(
                                                          'Digital Prescriptions',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height:
                                                                1.3899999857 *
                                                                    ffem /
                                                                    fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // solarnoteslinearoZP (1:3684)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                2.33 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        width: 22.85 * fem,
                                                        height: 23.33 * fem,
                                                        child: Image.asset(
                                                          'assets/images/digitialhome.png',
                                                          width: 22.85 * fem,
                                                          height: 23.33 * fem,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // writeprescriptionsandmuchmorei (1:3689)
                                                  constraints: BoxConstraints(
                                                    maxWidth: 121 * fem,
                                                  ),
                                                  child: Text(
                                                    'Write prescriptions, and much more.',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.3899999619 *
                                                          ffem /
                                                          fem,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Color(0xff979797),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // addappointment3Tj (1:3700)
                                          left: 86 * fem,
                                          top: 46 * fem,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  20 * fem,
                                                  27.25 * fem,
                                                  22 * fem,
                                                  27.25 * fem),
                                              width: 72 * fem,
                                              height: 72 * fem,
                                              decoration: BoxDecoration(
                                                color: Color(0xff00796b),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        36 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x7a050505),
                                                    offset: Offset(
                                                        0 * fem, 4 * fem),
                                                    blurRadius: 3 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                // mdiaccountmultipleaddJeZ (I1:3700;1:3741)
                                                child: SizedBox(
                                                  width: 30 * fem,
                                                  height: 17.5 * fem,
                                                  child: Image.asset(
                                                    'assets/images/floatadd.png',
                                                    width: 30 * fem,
                                                    height: 17.5 * fem,
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
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0xFF00796B),
                    Color(0xFF03BF9C),
                    Color(0x0003BF9C)
                  ],
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.height,
                height: 80,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF6F6F6),
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(width: 36),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Ajit Bhalla',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'General physicist',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Khed Clinic',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Container(
                width: 235,
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFFEC43),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Clinic',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFD9D9D9),
                                      shape: OvalBorder(),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 79,
                            child: Text(
                              'Add another profile',
                              style: TextStyle(
                                color: Color(0xFF6B6B6B),
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
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
            Divider(),
            InkWell(
              onTap: () => _launchURL(),
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Upgrade to ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'HealTether+',
                            style: TextStyle(
                              color: Color(0xFF029E85),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => patient_analysis(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Patients Analysis',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => appointment_analysis(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Appointments Analysis',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => payment_analysis(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Payment Analysis',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                _showSettingsBottomSheet(context);
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                showLogoutAlertDialog(context);
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              // onTap: () => _launchURL(),
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Help',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => feedback(),
                  ),
                );
              },
              child: Container(
                width: 264,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Feedback',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                _launchURL();
              },
              child: Container(
                width: 264,
                height: 14,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 8),
                    Text(
                      'Privacy policy.',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 85),
                    Text(
                      'Terms and conditions.',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 253,
                child: TextButton(
                    onPressed: () {
                      _launchURL();
                    },
                    child: Text(
                      '© Copyright 2023 HealTether. All Rights Reserved',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 10,
                        height: 6,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }

  void showLogoutAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: SizedBox(
            width: 336,
            child: Text(
              'Do you want to Logout ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 100,
                    height: 45,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF03BF9C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                    ),
                    child: Center(
                      child: Text(
                        'No',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Container(
                    width: 100,
                    height: 45,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  void _showSettingsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Settings',
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => appointment(),
                      ),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.settings_backup_restore),
                      title: Text(
                        'Previous Appointment',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => patient_analysis(),
                      ),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.pie_chart),
                      title: Text(
                        'View Analysis',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => payment_analysis(),
                      ),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "\$",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      title: Text(
                        'View Revenue',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text(
                        'Tutorials',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showADBottomSheet(context);
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text(
                        'Additional Details',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.language),
                      title: Text(
                        'Support',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showADBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Additional Details',
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    _makePhoneCall("9080857909");
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text(
                        'Contact Us',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                          child: Icon(
                            Icons.question_mark,
                            color: Colors.white,
                          )),
                      title: Text(
                        'FAQ Us',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_sharp),
                      title: Text(
                        'Privacy Policy',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchURL();
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                          child: Icon(
                            Icons.question_mark,
                            color: Colors.white,
                          )),
                      title: Text(
                        'Terms & Conditions',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showLogoutAlertDialog(context);
                  },
                  child: Container(
                    width: 250,
                    child: ListTile(
                      leading: Icon(Icons.login_outlined),
                      title: Text(
                        'Logout',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
